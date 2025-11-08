//
//  BannerView.swift
//  InfinityMusic
//
//  Created by Saravanan T on 21/10/24.
//

import SwiftUI

struct BannerView: View {
    let content:[Contents]
    var body: some View {
        PageView(pages: content.map { CarouselCard(content: $0)})
            .frame(maxWidth: .infinity, maxHeight: 415)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
