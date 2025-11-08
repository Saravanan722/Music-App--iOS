//
//  Onboard.swift
//  InfinityMusic
//
//  Created by Saravanan T on 20/11/24.
//

import Foundation

struct Onboard: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let description: String
    let imageUrl: String
    var tag: Int
}
