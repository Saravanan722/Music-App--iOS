//
//  CardView.swift
//  InfinityMusic
//
//  Created by Saravanan T on 19/10/24.
//

import SwiftUI
import Kingfisher

struct CardView: View {
    let url: String
    var body: some View {
        GeometryReader { geo in
            KFImage.url(URL(string: url))
                .fade(duration: 0.25)
                .placeholder { _ in
                    RoundedRectangle(cornerRadius: 0)
                        .fill(.gray.opacity(0.3))
                        .background(.gray)
                        .redacted(reason: .placeholder)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                        .overlay(
                            Image(systemName: "music.note")
                                .resizable()
                                .renderingMode(.template)
                                .foregroundStyle(.white.opacity(0.92))
                                .frame(width: 24, height: 24)
                        )
               }
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: geo.size.width, height: geo.size.height)
       }
   }
}
