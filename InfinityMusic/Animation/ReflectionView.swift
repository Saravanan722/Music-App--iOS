//
//  ReflectionView.swift
//  InfinityMusic
//
//  Created by Saravanan T on 16/11/24.
//

import SwiftUI

struct ReflectionView: View {
    @State private var start = false
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                Text("Hello, World!")
                    .font(.system(size: 50))
                    .foregroundStyle(.blue.gradient)
                    .reflection()
                
                Image(.art)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipped()
                    .reflection()
                
                    Image(systemName: "bolt.heart.fill")
                    .font(.system(size: 100))
                    .foregroundStyle(.red)
                    .reflection()
                    .scaleEffect(start ? 1.3 : 1)
            }
        }
        .onAppear {
            withAnimation(.spring(duration: 1).repeatForever(autoreverses: true)) {
                start.toggle()
            }
        }
    }
}

#Preview {
    ReflectionView()
}
