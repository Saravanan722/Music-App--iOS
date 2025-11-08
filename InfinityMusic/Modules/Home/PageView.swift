//
//  PageView.swift
//  InfinityMusic
//
//  Created by Saravanan T on 19/10/24.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @StateObject private var viewModel = AutoScrollViewModel()
    var body: some View {
        VStack(spacing: 5) {
            PageViewController(pages: pages, currentPage: $viewModel.currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $viewModel.currentPage)
                .frame(width: CGFloat(pages.count * 18))
       }
        .frame(height: UIDevice.current.userInterfaceIdiom == .pad ? 650 : 415)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .onAppear {
            viewModel.updateViewState(true, pageCount: pages.count)
       }
        .onDisappear {
            viewModel.updateViewState(false, pageCount: pages.count)
       }
   }
}
