//
//  SideBarAction.swift
//  InfinityMusic
//
//  Created by Saravanan T on 29/11/24.
//

import Foundation

enum SideBarAction: String, CaseIterable {
    case cummunniies = "Communities"
    case bookmarks = "Bookmarks"
    case lists = "Lists"
    case message = "Messages"
    case settings = "Settings"
    case music = "Music"
    case followers = "Followers"
    case following = "Following"
    
    var symbolImage: String {
        switch self {
        case .cummunniies:
            "laptopcomputer"
        case .bookmarks:
            "bookmark.square.fill"
        case .lists:
            "music.note.list"
        case .message:
            "ellipsis.message.fill"
        case .settings:
            "gearshape"
        case .music:
            "music.note"
        case .followers:
            "person.2.circle.fill"
        case .following:
            "person.crop.circle.fill"
        }
    }
}
