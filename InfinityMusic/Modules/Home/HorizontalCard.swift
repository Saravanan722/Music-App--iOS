//
//  HorizontalCard.swift
//  InfinityMusic
//
//  Created by Saravanan T on 21/10/24.
//

import SwiftUI

struct HorizontalCard: View {
    let contents: [Contents]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 15) {
                ForEach(contents, id: \.playlist.contentName) { item in
                    if item.contentType == "Playlist" {
                        NavigationLink {
                            DetailScreen()
                        } label: {
                            PlayListCard(playlist: item.playlist)
                        }
                    }
                }
            }
        }
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 15) {
                ForEach(contents, id: \.album.contentName) { item in
                    if item.contentType == "Album" {
                        NavigationLink {
                            DetailScreen()
                        } label: {
                            AlbumCard(album: item.album)
                        }
                    }
                }
            }
        }
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 15) {
                ForEach(contents, id: \.track.contentName) { item in
                    if item.contentType == "Track" {
                        NavigationLink {
                            DetailScreen()
                        } label: {
                            TrackCard(track: item.track)
                        }
                    }
                }
            }
        }
    }
}
