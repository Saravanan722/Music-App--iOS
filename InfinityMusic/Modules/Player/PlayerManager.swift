//
//  PlayerManager.swift
//  InfinityMusic
//
//  Created by Saravanan T on 17/10/24.
//

import Foundation
import MediaPlayer

@MainActor
final class PlayerManager: NSObject, ObservableObject {
    @Published private(set) var data: Data = .init(count: 0)
    @Published private(set) var title = ""
    @Published private(set) var audioSessionOutputs: String = ""

    @Published var percentProgress: CGFloat = 0
    @Published var percentVolume: CGFloat = 0
    @Published var time = 0

    @Published var repeatState: SongsRepeatState = .normal
    @Published var currentPlaySong: Track?
    @Published var music = [MusicQueue]()
    @Published var lyricLines = [LyricLine]()

    @Published var isPlaying = false
    @Published var shouldRepeatSong = false
    @Published var shouldShuffleSongs = false
    @Published var shouldRepeatPlaylist = false
    @Published var isExpanded = false
    var showQueueControl = false

    private let audioSession = AVAudioSession.sharedInstance()
    private var player = AVPlayer()
    private var playerItem: AVPlayerItem?
    private var volumeSlider: UISlider!
    private var notificationCenter = NotificationCenter.default

    private var backStack = Stack<Track>()

    override init() {
        super.init()
        let volumeView = MPVolumeView()
        volumeSlider = volumeView.subviews.compactMap({ $0 as? UISlider }).first

        setupRemoteTransportControls()
    }

    func playAllAudioTrack(track: [Track]) {
        music = [
            .init(type: .user, music: []),
            .init(type: .default, music: track)
        ]

        if music.count > 0 && music[0].music.count > 0 {
            play(at: IndexPath(row: 0, section: 0))
        } else if music.count > 1 && music[1].music.count > 0 {
            play(at: IndexPath(row: 0, section: 1))
        }
    }

    func shuffledSongs() {
        self.music[1].music.shuffle()
        shouldShuffleSongs = true
    }

    func orderedSongs() {
        self.music[1].music.sort { $0.contentId < $1.contentId }
        shouldShuffleSongs = false
    }

    func onDisappear() {
        notificationCenter.removeObserver(
            self,
            name: Notification.Name("SystemVolumeDidChange"),
            object: nil
        )
        notificationCenter.removeObserver(
            self,
            name: AVAudioSession.routeChangeNotification,
            object: audioSession
        )
    }

    var playerCurrentTime: Double {
        get {
            return player.currentTime().seconds
        }
        set {
            let newTime = CMTime(seconds: newValue, preferredTimescale: CMTimeScale(NSEC_PER_SEC))
            player.seek(to: newTime)
        }
    }

    var playerDuration: Double {
        guard let currentItem = player.currentItem else {
            return 0
        }

        let durationInSeconds = currentItem.duration.seconds
        return durationInSeconds.isFinite ? durationInSeconds : 0
    }
    var playerCurrentTimeStr: String {
        let formatter = DateComponentsFormatter()
        formatter.zeroFormattingBehavior = .pad
        formatter.allowedUnits = [.minute, .second]

        let currentTime = player.currentTime().seconds
        return formatter.string(from: currentTime) ?? "00:00"
    }
    var playerMissingTimeStr: String {
        let remainingTime = playerDuration - playerCurrentTime
        let formatter = DateComponentsFormatter()
        formatter.zeroFormattingBehavior = .pad
        formatter.allowedUnits = [.minute, .second]
        return (formatter.string(from: remainingTime) ?? "")
    }

    func skipBackward() {
        playerCurrentTime = max(0, playerCurrentTime - 15)
    }

    func skipForward() {
        playerCurrentTime = min(playerDuration, playerCurrentTime + 30)
    }
    func incrementOrRepeatPlaylist() {}

    func play(song: Track) {
        do {
            try audioSession.setCategory(.playback)
        } catch {
            print("Setting category to AVAudioSessionCategoryPlayback failed.")
        }
        self.currentPlaySong = song
        self.parseLyrics(song.lyrics)
        let url = URL(
            string: song.feed
        )!
        self.playerItem = AVPlayerItem(url: url)
        self.player.replaceCurrentItem(with: playerItem)
        self.player.play()
        self.isPlaying = true
        self.getArtworkAndTitle()

        let interval = CMTime(seconds: 1, preferredTimescale: CMTimeScale(NSEC_PER_MSEC))
        player.addPeriodicTimeObserver(forInterval: interval, queue: .main) { [weak self] time in
            guard let self = self else { return }
            
            if let duration = player.currentItem?.duration.seconds, duration > 0 {
                let percentProgress = CGFloat(time.seconds / duration)
                self.time = Int(time.seconds)
            }
        }

        self.percentVolume = CGFloat(audioSession.outputVolume)

        notificationCenter.addObserver(
            self,
            selector: #selector(systemVolumeDidChange),
            name: Notification.Name("SystemVolumeDidChange"),
            object: nil
        )

        updateOutputDevices()

        notificationCenter.addObserver(
            self,
            selector: #selector(audioSessionRouteChanged),
            name: AVAudioSession.routeChangeNotification,
            object: audioSession
        )

        addPlaybackObserver()
    }

    func play(at indexPath: IndexPath) {
        if indexPath.section == 0 {

        } else if indexPath.section == 1 && indexPath.row < music[indexPath.section].music.count {
            for index in 0 ... indexPath.row {
                let song = music[indexPath.section].music.removeFirst()
                backStack.push(song)
                if index == indexPath.row {
                    play(song: song)
                }
            }
        }
    }

    func playToNext() {
        if !music[0].music.isEmpty {
            if music[0].music.count >= 1 {
                let song = music[0].music.removeFirst()
                play(song: song)
            }
        } else if music[1].music.count >= 1 {
            let song = music[1].music.removeFirst()
            backStack.push(song)
            play(song: song)
        }
    }

    func playToPrevious() {
        if let song = backStack.pop() {
            music[1].music.insert(song, at: 0)
            play(song: song)
        }
    }

    private func addPlaybackObserver() {
        NotificationCenter.default.addObserver(
            forName: .AVPlayerItemDidPlayToEndTime,
            object: playerItem,
            queue: nil
        ) { [self] _ in
            Task {
                switch await repeatState {
                case .normal: await playToNext()
                case .allSongs: fatalError()
                case .oneSongs: fatalError()
                }
            }
        }
    }

    func playOrPause() {
        if self.isPlaying {
            self.player.pause()
            self.isPlaying = false
        } else {
            self.player.play()
            self.isPlaying = true
        }
    }

    private func getArtworkAndTitle() {
        self.data = .init(count: 0)
        self.title = "???"

        guard let playerItem = playerItem else { return }

        let asset = playerItem.asset

        for commanData in asset.commonMetadata {
            if commanData.commonKey?.rawValue == "artwork", let data = commanData.value as? Data {
                self.data = data
            }
            if commanData.commonKey?.rawValue == "title", let title = commanData.value as? String {
                self.title = title
            }
        }

        self.updateNowPlaying()
    }

    public var audioVolume: Double {
        get {
            return Double(volumeSlider.value)
        }
        set {
            percentVolume = newValue
            volumeSlider.value = Float(newValue)
        }
    }

    @objc func systemVolumeDidChange(notification: NSNotification) {
        guard let userInfo = notification.userInfo,
              let percVolume = userInfo["Volume"] as? Float else {
            return
        }

        Task.detached(priority: .background) {
            await MainActor.run {
                self.percentVolume = Double(percVolume)
            }
        }
    }

    func increaseVolume() {
        self.audioVolume = min(self.audioVolume + 0.1, 1)
    }

    func decreaseVolume() {
        self.audioVolume = max(self.audioVolume - 0.1, 0)
    }

    private func setupRemoteTransportControls() {
        let commandCenter = MPRemoteCommandCenter.shared()

        commandCenter.playCommand.addTarget { [unowned self] _ in
            if !self.isPlaying {
                self.player.play()
                self.isPlaying = true
                return .success
            }
            return .commandFailed
        }

        commandCenter.pauseCommand.addTarget { [unowned self] _ in
            if self.isPlaying {
                self.player.pause()
                self.isPlaying = false
                return .success
            }
            return .commandFailed
        }

        commandCenter.skipBackwardCommand.preferredIntervals = [NSNumber(value: 15)]
        commandCenter.skipBackwardCommand.addTarget { [unowned self] _ in
            self.skipBackward()
            return .success
        }

        commandCenter.skipForwardCommand.preferredIntervals = [NSNumber(value: 30)]
        commandCenter.skipForwardCommand.addTarget { [unowned self] _ in
            self.skipForward()
            return .success
        }

        commandCenter.changePlaybackPositionCommand.addTarget { [unowned self] event in
            if let event = event as? MPChangePlaybackPositionCommandEvent {
                self.playerCurrentTime = event.positionTime
                return .success
            }
            return .commandFailed
        }
    }

    private func updateNowPlaying() {
        var nowPlayingInfo = [String: Any]()
        nowPlayingInfo[MPMediaItemPropertyTitle] = self.currentPlaySong?.contentName
        nowPlayingInfo[MPMediaItemPropertyMediaType] = MPMediaType.anyAudio.rawValue

        if let image = UIImage(data: self.data) {
            nowPlayingInfo[MPMediaItemPropertyArtwork] = MPMediaItemArtwork(boundsSize: image.size) { _ in
                return image
            }
        }

        nowPlayingInfo[MPNowPlayingInfoPropertyElapsedPlaybackTime] = self.playerCurrentTime
        nowPlayingInfo[MPMediaItemPropertyPlaybackDuration] = NSNumber(value: self.playerDuration)
        nowPlayingInfo[MPNowPlayingInfoPropertyPlaybackRate] = self.isPlaying ? 1.0 : 0.0

        MPNowPlayingInfoCenter.default().nowPlayingInfo = nowPlayingInfo
    }

    private func updateOutputDevices() {
        let availableOutputs = audioSession.currentRoute.outputs
        let firstOutput = availableOutputs.first
        let otherOutputs = availableOutputs.dropFirst()
        audioSessionOutputs = otherOutputs.map(\.portName).reduce(
            firstOutput?.portName, {
                ($0 ?? "") + ", " + $1
            }
        ) ?? ""
    }

    @objc func audioSessionRouteChanged(notification: Notification) {
        updateOutputDevices()
    }

//    func formatTime(from time: CMTime) -> String {
//        let totalSeconds = CMTimeGetSeconds(time)
//        
//        if totalSeconds.isFinite && totalSeconds >= 0 {
//            let minutes = Int(totalSeconds) / 60
//            let seconds = Int(totalSeconds) % 60
//            let fraction = Int((totalSeconds - Double(minutes * 60 + seconds)) * 100)
//            
//            return String(format: "%02d:%02d.%02d", minutes, seconds, fraction)
//        } else {
//            return "00:00.00"
//        }
//    }
    
    func parseLyrics(_ url: String) {
        guard let lyricUrl = URL(string: url) else { return }
        let task = URLSession.shared.dataTask(with: lyricUrl) { data, response, error in
            if let error = error {
                print("Error downloading lyrics: \(error)")
                return
            }

            guard let data = data, let lyricsString = String(data: data, encoding: .utf8) else {
                return
            }

            print(lyricsString)

            let lines = lyricsString.components(separatedBy: "\n")

            let regex = try! NSRegularExpression(pattern: "\\[(\\d{2}:\\d{2}\\.\\d{2})\\](.*)")  // swiftlint:disable:this force_try

            for line in lines {
                let matches = regex.matches(in: line, range: NSRange(location: 0, length: line.utf16.count))
                var seq = 0
                for match in matches {
                    if match.numberOfRanges == 3 {
                        let timeRange = Range(match.range(at: 1), in: line)!
                        let lineRange = Range(match.range(at: 2), in: line)!

                        let timeString = String(line[timeRange])
                        let lineString = String(line[lineRange])

                        let timeComponents = timeString.split(separator: ":").compactMap { Float($0) }
                        let time = timeComponents[0] * 60 + timeComponents[1] // Convert minutes and seconds to total seconds

                        let line = LyricLine(seq: seq, keyTime: Int(time), line: lineString.trimmingCharacters(in: .whitespaces))
                        self.lyricLines.append(line)
                        seq += 1
                    }
                }
            }
        }
        task.resume()
    }
}
