//
//  CategoryRowMusicView.swift
//  InfinityMusic
//
//  Created by Saravanan T on 21/10/24.
//

import SwiftUI

struct CategoryRowMusicView: View {
    let layout: [LayoutInfo]
    var body: some View {
        LazyVStack(alignment: .leading, spacing: 5) {
            ForEach(layout, id: \.sectionOrder) { data in
                if data.layoutName == "Banner" {
                    BannerCardMusic(content: data.contents)
                } else {
                    Text(data.layoutName)
                        .foregroundStyle(.white)
                        .font(.system(size: 18, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 5)
                    HorizontalCard(contents: data.contents)
                }
            }
        }
    }
}
