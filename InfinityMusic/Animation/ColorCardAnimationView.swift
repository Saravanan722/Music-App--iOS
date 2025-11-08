//
//  ColorCardAnimationView.swift
//  InfinityMusic
//
//  Created by Saravanan T on 16/11/24.
//

import SwiftUI

struct ColorCardAnimationView: View {
    @State private var rotation: CGFloat = 0.0
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 260, height: 340)
                .foregroundStyle(.black)
                .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 0)
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 500, height: 200)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple, .pink]), startPoint: .top, endPoint: .bottom))
                .rotationEffect(.degrees(rotation))
                .mask {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(lineWidth: 3)
                        .frame(width: 256, height: 336)
                        .foregroundStyle(.black)
                }
            Text("Saravanan T")
                .foregroundStyle(.white)
                .font(.system(size: 24, weight: .bold))
        }
        .onAppear {
            withAnimation(.linear(duration: 3).repeatForever(autoreverses: false)) {
               rotation = 360
            }
        }
    }
}

#Preview {
    ColorCardAnimationView()
}
