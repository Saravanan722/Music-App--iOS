//
//  LoadingAnimationView.swift
//  InfinityMusic
//
//  Created by Saravanan T on 16/11/24.
//

import SwiftUI

struct LoadingAnimationView: View {
    @State private var start = false
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 100, height: 90)
                .foregroundStyle(
                    AngularGradient.init(
                        gradient: Gradient(
                            colors: [
                                .red.opacity(0.1),
                                .red.opacity(0.25),
                                .red.opacity(0.5),
                                .red
                            ]
                        ),
                        center: .center,
                        angle: .degrees(start ? 360 : 0)
                    )
                )
            .mask {
                Image(systemName: "circle")
                    .resizable()
                    .frame(width: 100, height: 100)
            }
        }
        .onAppear {
            withAnimation(.linear(duration: 1).repeatForever(autoreverses: false)) {
                start.toggle()
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    LoadingAnimationView()
}
