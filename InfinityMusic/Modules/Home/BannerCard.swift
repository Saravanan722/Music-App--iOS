//
//  BannerCard.swift
//  InfinityMusic
//
//  Created by Saravanan T on 19/10/24.
//

import SwiftUI
import Kingfisher

struct BannerCard: View {
    let url: String
    var body: some View {
        KFImage.url(URL(string: url))
            .fade(duration: 0.25)
            .placeholder { _ in
//                RoundedRectangle(cornerRadius: 0)
//                    .fill(Color.gray)
//                    .background(.gray)
//                    .redacted(reason: .placeholder)
//                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
//                    .overlay(
//                        Image(systemName: "music.note")
//                            .resizable()
//                            .renderingMode(.template)
//                            .foregroundStyle(.white.opacity(0.92))
//                            .frame(width: 31, height: 31)
//                    )
            }
            .resizable()
            .aspectRatio(1, contentMode: .fill)
    }
}
