//
//  ReflectionModifier.swift
//  InfinityMusic
//
//  Created by Saravanan T on 16/11/24.
//

import SwiftUI

struct ReflectionModifier: ViewModifier {
    var opacity: Double
    var spacing: CGFloat
    func body(content: Content) -> some View {
        VStack(spacing: spacing) {
            content
            content
                .scaleEffect(-1)
                .mask(
                    LinearGradient(
                        gradient: Gradient(colors: [.black, .black.opacity(0)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .mask(
                    LinearGradient(
                        gradient: Gradient(colors: [.black, .black.opacity(0)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .opacity(opacity)
                .offset(y: spacing)
        }
    }
}


