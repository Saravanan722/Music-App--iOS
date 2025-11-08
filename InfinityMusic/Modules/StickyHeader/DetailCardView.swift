//
//  DetailCardView.swift
//  InfinityMusic
//
//  Created by Saravanan T on 15/11/24.
//

import SwiftUI

struct DetailCardView<Content: View>: View {
    let size: CGSize
    let safeArea: EdgeInsets
    let percentageHeight: CGFloat
    let content: Content
    @State private var contentOffset: CGFloat = .zero
    init(size: CGSize, safeArea: EdgeInsets, percentageHeight: CGFloat, @ViewBuilder content: () -> Content) {
        self.size = size
        self.safeArea = safeArea
        self.percentageHeight = percentageHeight
        self.content = content()
    }
    var body: some View {
        ZStack {
            VStack {
                ScrollView {
                    content
                        .padding(.top, size.height * percentageHeight + 14)
                        .background(
                            GeometryReader { geometry in
                                Color.clear
                                    .preference(key: ContentOffsetKey.self, value: geometry.frame(in: .named("scrollView")).minY)
                            }
                        )
                }
                .coordinateSpace(name: "scrollview")
                .onPreferenceChange(ContentOffsetKey.self) { value in
                    self.contentOffset = value
                }
            }

            VStack {
                HeaderCardView(
                    size: size,
                    safeArea: safeArea,
                    percentageHeight: percentageHeight,
                    contentOffset: $contentOffset
                )
                Spacer()
            }
        }
    }
}

#Preview {
    StickyHeaderScreen()
}
