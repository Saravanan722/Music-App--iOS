//
//  ColorCardAnimationView1.swift
//  InfinityMusic
//
//  Created by Saravanan T on 22/11/24.
//

import SwiftUI

struct ColorCardAnimationView1: View {
    @Binding var measuring: Bool
    let blue = Color(#colorLiteral(red: 0, green: 0.3725490196, blue: 1, alpha: 1))
    let red = Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .stroke(
                style:
                    StrokeStyle(
                        lineWidth: 5,
                        lineCap: .round,
                        lineJoin: .round,
                        miterLimit: 0,
                        dash: [150, 20],
                        dashPhase: measuring ? -83 : 83
                    )
            )
            .frame(width: 35, height: 45)
            .foregroundStyle(
                .angularGradient(
                    colors: [blue, red, blue],
                    center: .center,
                    startAngle: .degrees(measuring ? 360 : 0),
                    endAngle: .degrees(measuring ? 720 : 360)
                )
            )
            .hueRotation(.degrees(measuring ? 0 : 360))
            .onAppear {
                withAnimation(.linear(duration: 2)
                    .repeatForever(autoreverses: false)) {
                        measuring.toggle()
                    }
            }
    }
}
