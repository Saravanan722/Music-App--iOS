//
//  LyricDriverViewModel.swift
//  InfinityMusic
//
//  Created by Saravanan T on 18/10/24.
//

import Foundation
import SwiftUI

@MainActor
final class LyricDriverViewModel: ObservableObject {
//    @Published var lyricLines = [LyricLine]()
    @Published var songLines = [SongLine]()
    @Published var time = 0
    @Published var isPaused = false
    @Published var lyricsURL = "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/8ac7ced3324a437c80b1ca586603871c.lrc"
    
    var themeColor = Color.init(uiColor: UIColor(red: 46.0/255, green: 81.0/255, blue: 140.0/255, alpha: 1.0))
    
    var timer = Timer()
    
    let trackInfo : TrackInfo
    
    init(track: TrackInfo) {
        self.trackInfo = track
//        self.convertToLyricLine()
    }
    
    @objc private func fireTimer() {
        // Called each time the 1-second Timer fires (so each second) - progress time if song isn't finsihed or paused
        
        if !isPaused && time <= self.trackInfo.length {
            //            print("Time befor \(time)")
            time += 1
        }
        //        else {
        //            print("Time after \(time)")
        //        }
    }
    
    func pause_unpause() {
        isPaused.toggle()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
    }
    
//    private func convertToLyricLine() {
//        let parts = self.trackInfo.lyrics.split(separator: "\n")
//        
//        var seq = 0
//        for line in parts {
//            self.lyricLines.append(LyricLine(seq: seq, text: String(line), keyTime: trackInfo.times[seq]))
//            
//            seq += 1
//        }
//    }
    
    func parseLyrics(_ url: String) {
        let task = URLSession.shared.dataTask(with: URL(string: url)!) { data, response, error in
            if let error = error {
                print("Error downloading lyrics: \(error)")
                return
            }
            
            guard let data = data, let lyricsString = String(data: data, encoding: .utf8) else {
                return
            }
            
            print(lyricsString)
            
            // Split the input string into lines
            let lines = lyricsString.components(separatedBy: "\n")
            
            // Regular expression to match the time and line
            let regex = try! NSRegularExpression(pattern: "\\[(\\d{2}:\\d{2}\\.\\d{2})\\](.*)")
            
            for line in lines {
                // Find matches in the line
                let matches = regex.matches(in: line, range: NSRange(location: 0, length: line.utf16.count))
                var seq = 0
                for match in matches {
                    if match.numberOfRanges == 3 {
                        // Extract time and line using the ranges of matched groups
                        let timeRange = Range(match.range(at: 1), in: line)!
                        let lineRange = Range(match.range(at: 2), in: line)!
                        
                        let timeString = String(line[timeRange])
                        let lineString = String(line[lineRange])
                        
                        // Convert timeString to Float
                        let timeComponents = timeString.split(separator: ":").compactMap { Float($0) }
                        let time = timeComponents[0] * 60 + timeComponents[1] // Convert minutes and seconds to total seconds
                        
                        // Create SongLine object
                        let songLine = SongLine(seq: seq, keyTime: Int(time), line: lineString.trimmingCharacters(in: .whitespaces))
                        self.songLines.append(songLine)
                        seq += 1
                    }
                }
            }
            print(self.songLines)
        }
      
        task.resume()
    }
}
