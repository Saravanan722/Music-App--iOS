//
//  BannerCardMusic.swift
//  InfinityMusic
//
//  Created by Saravanan T on 29/10/24.
//

import SwiftUI
import Kingfisher

struct BannerCardMusic: View {
    @StateObject private var viewModel = AutoScrollViewModel()
    let content: [Contents]
    var body: some View {
        VStack(spacing: 5) {
            TabView(selection: $viewModel.currentPage) {
                ForEach(0 ..< content.count, id: \.self) { index in
                    let content = content[viewModel.currentPage]
                    CarouselCard(content: content)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: UIDevice.current.userInterfaceIdiom == .pad ? 650 : 415)
            
            IndictorView(
                0 ..< content.count,
                selection: $viewModel.currentPage
            ) {
                Capsule().frame(width: 4, height: 4)
                    .foregroundColor(.white)
            } higlight: {
                Capsule().frame(width: 48, height: 4)
                    .foregroundColor(.green)
            }
        }
        .onAppear {
            viewModel.updateViewState(true, pageCount: content.count)
        }
        .onDisappear {
            viewModel.updateViewState(false, pageCount: content.count)
        }
    }
}

