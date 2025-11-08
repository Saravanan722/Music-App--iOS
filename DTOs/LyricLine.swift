//
//  LyricLine.swift
//  InfinityMusic
//
//  Created by Saravanan T on 18/10/24.
//

import Foundation

struct LyricLine : Identifiable {
    let id = UUID()
    let seq : Int
    let keyTime: Int
    let line: String
    
}

struct LyricLineDTOs: Identifiable {
    let id = UUID()
    let time: String
    let text: String
}

struct SongLine: Identifiable  {
    let id = UUID()
    let seq : Int
    let keyTime: Int
    let line: String
}

