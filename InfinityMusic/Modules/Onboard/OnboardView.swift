//
//  OnboardView.swift
//  InfinityMusic
//
//  Created by Saravanan T on 20/11/24.
//

import SwiftUI

struct OnboardView: View {
    @State var index = 0
    @State var color: [Color] = [
        .green,
        .yellow,
        .red,
        .cyan,
        .gray,
        .white,
        .brown,
        .blue,
        .purple,
        .accentColor,
        .indigo,
        .mint,
        .orange,
        .pink,
        .teal,
        .primary,
        .secondary
    ]
    @State var text: [String] = [
        "Glorify",
        "Glorify",
        "Glorify",
        "Glorify",
        "Glorify",
        "Glorify",
        "Glorify",
        "Glorify",
        "Glorify",
        "Glorify",
        "Glorify",
        "Glorify",
        "Glorify",
        "Glorify",
        "Glorify",
        "Glorify",
        "Glorify"
    ]
    let data: Onboard
    var body: some View {
        VStack {
            Image(data.imageUrl)
                .resizable()
                .scaledToFit()
                .frame(
                    width: UIScreen.main.bounds.width,
                    height: UIScreen.main.bounds.height,
                    alignment: .top
                )
                .overlay(
                    ZStack(alignment: .bottom) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text(data.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.system(size: 28, weight: .bold))
                                .foregroundColor(.white)
                            
                            Text(data.description)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(Color.gray)
                        }
                        .padding(.horizontal, 16)
                        .padding(.bottom, 140)
                    },
                    alignment: .bottom
                )
                .overlay(
                    Text(text[index])
                        .font(.system(size: 24, weight: .thin))
                        .foregroundStyle(.white)
                        .contentTransition(.numericText())
                        .shadow(color: color[index], radius: 5)
                        .shadow(color: color[index], radius: 5)
                        .shadow(color: color[index], radius: 50)
                        .shadow(color: color[index], radius: 100)
                        .shadow(color: color[index], radius: 200)
                        .onAppear {
                            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                                withAnimation {
                                    index = (index + 1) % color.count
                                }
                            }
                        }
                        .padding(33),
                    alignment: .topTrailing
                )
        }
        .background {
            LinearGradient(
                colors: [
                    .black
                ],
                startPoint: .bottom,
                endPoint: .top
            )
        }
    }
}
