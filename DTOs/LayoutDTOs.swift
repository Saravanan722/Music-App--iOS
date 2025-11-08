//
//  LayoutDTOs.swift
//  InfinityMusic
//
//  Created by Saravanan T on 18/10/24.
//

import Foundation

struct LayoutDTOs {
    let status: Int
    let data: [LayoutInfo]
    let message: String
    let totalRecords: Int
}

struct LayoutInfo {
    let layoutSectionId: String
    let customerId: Int
    let layoutId: String
    let layoutName: String
    let layoutType: String
    let type: String
    let sectionType: SectionMusicTypes
    let sectionOrder: Int
    let layoutMode: String
    let contents: [Contents]
    let customLayouts: [CustomLayout]
}
struct CustomLayout {
    let subLayoutId: String
    let subLayoutName: String
    let imageId: String
}

struct Contents: Identifiable {
    var id = UUID()
    let contentType: String
    let track: Track
    let album: Album
    let playlist: Playlist
}

struct Album {
    let id: String
    let contentId: String
    let customerId: Int
    let albumType: String
    let contentName: String
    let isPremium: Bool
    let contentType: String
    let albumImages1: [ImageDTOs]
    let albumImages2:  [ImageDTOs]
    let duration: Int
    let releasedAt: String
    let languages: LanguageDTOs
    let md1: Cast
    let md2: Cast
    let productionHouse: ProductionHouse
    let description: String
    let tracksCount: Int
    let myList: Bool
}

struct Playlist {
    let id: String
    let contentId: String
    let customerId: Int
    let user: User
    let contentName: String
    let isPrivate: Bool
    let allowEdit: Bool
    let isUser: Bool
    let contentType: String
    let images: [ImageDTOs]
    let duration: Int
    let createdAt: String
    let languages: LanguageDTOs
    let productionHouse: ProductionHouse
    let description: String
    let tracksCount: Int
    let myList: Bool
    
}

struct ProductionHouse {
    let productionHouseId: String
    let productionHouseName: String
    let bannerImage: String
}

struct Cast {
    let castId: String
    let castName: String
}

struct LanguageDTOs {
    let languageId: String
    let languageName: String
    let localName: String
    let imageId: String
}

struct ImageDTOs: Hashable {
    let imageUrl: String
    let imageType: String
}

struct User {
    let userId: String
    let userName: String
}

struct Track {
    var id: String
    var contentId: String
    var lyrics: String
    let md1: Cast
    let md2: Cast
    let customerId: Int
    var contentName: String
    var albumId: String
    var albumName: String
    let isPremium: Bool
    var contentType: String
    let albumImages1: [ImageDTOs]
    let albumImages2:  [ImageDTOs]
    var duration: Int
    var releasedAt: String
    let languages: [LanguageDTOs]
    let singers: [Cast]
    let lyricist: [Cast]
    var description: String
    var feed: String
    let myList: Bool
    var _isSelected: Bool = false
    var isSelected: Bool {
        get {
            return _isSelected
        }
        set {
            _isSelected = newValue
        }
    }
}

enum SectionMusicTypes: String, Decodable {
    case s1Section = "S1"
    case banner = "Banner"
}


enum ImageType: String, Decodable {
    case imageS1 = "s1"
    case imageS2 = "s2"
    case imageS3 = "s3"
    case imageS1webp = "s1webp"
    case imageS2webp = "s2webp"
    case imageS3webp = "s3webp"
    case trackImageMusic = "trackImage"
    case trackImage2s1Music = "trackImage2s1"
    case trackImage2s2Music = "trackImage2s2"
}

enum ContentType: String, Decodable {
    case album = "Album"
    case track = "Track"
    case playlist = "Playlist"
}
