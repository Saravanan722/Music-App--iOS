//
//  StickyHeaderScreen.swift
//  InfinityMusic
//
//  Created by Saravanan T on 15/11/24.
//

import SwiftUI

struct StickyHeaderScreen: View {
    var body: some View {
        GeometryReader {
            DetailCardView(size: $0.size, safeArea: $0.safeAreaInsets, percentageHeight: 0.5) {
                DataCardView()
                    .padding(.horizontal)
            }
            .ignoresSafeArea(.all, edges: .top)
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    StickyHeaderScreen()
}
