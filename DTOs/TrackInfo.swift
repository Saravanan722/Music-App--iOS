//
//  TrackInfo.swift
//  InfinityMusic
//
//  Created by Saravanan T on 18/10/24.
//

import Foundation

struct TrackInfo {
    var title : String
    var artist : String
    var length : Int
    var lyrics : String
    var times : [Int]
}


struct MusicQueue {
    let type: MusicQueueType
    var music: [Track]
}


extension MusicQueue {
    enum MusicQueueType {
        case user
        case `default`
    }
}


struct Stack<T> {
    var array: [T] = []
}

extension Stack {
    mutating func push(_ element: T) {
        array.append(element)
    }

    mutating func pop() -> T? {
        array.popLast()
    }

    var peek: T? { array.last }

    var isEmpty: Bool { array.isEmpty }

    var count: Int { array.count }
}

enum SongsRepeatState {
    case normal
    case allSongs
    case oneSongs
}
