//
//  AlbumCard.swift
//  InfinityMusic
//
//  Created by Saravanan T on 21/10/24.
//

import SwiftUI

struct AlbumCard: View {
    let album: Album
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ForEach(album.albumImages1, id: \.imageType) { image in
                if image.imageType == "s2" {
                   CardView(url: image.imageUrl)
                        .frame(width: 140, height: 140)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
            }
            
            Text(album.contentName)
                .font(.system(size: 14, weight: .medium))
                .foregroundStyle(.white)
                .lineLimit(1)
                .frame(width: 140, alignment: .leading)
            
            Text(album.md1.castName)
                .font(.system(size: 14, weight: .regular))
                .foregroundStyle(.white.opacity(0.70))
                .frame(width: 140, alignment: .leading)
                .lineLimit(1)
        }
    }
}
