//
//  HeaderCardView.swift
//  InfinityMusic
//
//  Created by Saravanan T on 15/11/24.
//

import SwiftUI

struct HeaderCardView: View {
    let size: CGSize
    let safeArea: EdgeInsets
    let percentageHeight: CGFloat
    private let minHeight: CGFloat
    @Binding var contentOffset: CGFloat
    @State private var progress: CGFloat = 0
     
    init(size: CGSize, safeArea: EdgeInsets, percentageHeight: CGFloat, contentOffset: Binding<CGFloat>) {
        self.size = size
        self.safeArea = safeArea
        self.percentageHeight = percentageHeight
        self.minHeight = 60 + safeArea.top
        _contentOffset = contentOffset
        self.progress = progress
    }
    var body: some View {
        ZStack {
            GeometryReader {
                let rect = $0.frame(in: .global)
                Image(.art)
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width: rect.size.width + (52 - rect.width) * progress,
                        height: rect.height + (52 - rect.height) * progress
                    )
                    .clipShape(.rect(cornerRadius: 120 * progress))
                    .offset(x: 52 * progress, y: (safeArea.top - 4) * progress)
                    .onChange(of: contentOffset, perform: { newValue in
                        progress = min(max(-contentOffset / (size.height * percentageHeight - minHeight),0), 1)
                    })
//                    .onChange(of: contentOffset) { oldValue, newValue in
//                        progress = min(max(-contentOffset / (size.height * percentageHeight - minHeight),0), 1)
//                    }
            }
            VStack(alignment: .leading) {
                Spacer()
                Text("ScrrollView")
                    .font(.title.bold())
                    .foregroundStyle(.white)
                Text("iOS Developer")
                    .foregroundStyle(Color.secondary)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .scaleEffect(1 - 0.4 * progress,anchor: .leading)
            .offset(x: 100 * progress)
            .padding(.horizontal)
            .padding(.bottom, max(10  - 100 * progress, 0))
            
            
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "arrow.left")
                        .imageScale(.large)
                        .foregroundStyle(.white)
                    Spacer()
                }
                .padding(.top, safeArea.top + 12)
                .padding(.leading)
                Spacer()
            }

        }
        .frame(height: height())
        .background(
            Rectangle()
                .fill(.ultraThinMaterial)
                .opacity(1 * progress)
        )
        .clipped()
    }
}

extension HeaderCardView {
    func height() -> CGFloat {
        size.height * percentageHeight + contentOffset < minHeight ? minHeight : size.height * percentageHeight + contentOffset
    }
}

#Preview {
    StickyHeaderScreen()
}
