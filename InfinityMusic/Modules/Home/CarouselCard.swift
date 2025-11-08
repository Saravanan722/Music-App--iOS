//
//  CarouselCard.swift
//  InfinityMusic
//
//  Created by Saravanan T on 21/10/24.
//

import SwiftUI
import Kingfisher

struct CarouselCard: View {
    let content: Contents
    var body: some View {
        VStack {
            if let image = content.album.albumImages1.first (where: { $0.imageType == "s2" }) {
                BannerCard(url: image.imageUrl)
                    .frame(maxWidth: .infinity)
                    .frame(height: 400)
                    .background(Color.red)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            
            ForEach(content.playlist.images, id: \.imageUrl) { image in
                if image.imageType == "s2" {
                    NavigationLink {
                        DetailScreen()
                    } label: {
                        BannerCard(url: image.imageUrl)
                            .frame(maxWidth: .infinity, maxHeight: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
            }
        }
    }
}
