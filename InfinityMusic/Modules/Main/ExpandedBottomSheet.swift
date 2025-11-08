//
//  ExpandedBottomSheet.swift
//  InfinityMusic
//
//  Created by Saravanan T on 14/10/24.
//

import SwiftUI

struct ExpandedBottomSheet: View {
    @Binding var expandSheet: Bool
    var animation: Namespace.ID
    @State private var animateContent = false
    @State private var offsetY: CGFloat = 0
    @State private var offsetX: CGFloat = 0
    var body: some View {
        ScrollViewReader { proxy in
            VStack {
                GeometryReader {
                    let size = $0.size
                    let safeArea = $0.safeAreaInsets
                    ZStack {
                        RoundedRectangle(cornerRadius: animateContent ? deviceCornerRadius : 0, style: .continuous)
                            .fill(.ultraThickMaterial)
                            .overlay {
                                RoundedRectangle(cornerRadius: animateContent ? deviceCornerRadius : 0, style: .continuous)
                                    .fill(.ultraThickMaterial)
                                    .opacity(animateContent ? 0 : 1)
                            }
                            .overlay(alignment: .top) {
                                MusicInfo(expandSheet: $expandSheet, animation: animation)
                                    .allowsHitTesting(false)
                                    .opacity(animateContent ? 0 : 1)
                            }
                            .matchedGeometryEffect(id: "BGVIEW", in: animation)
                        VStack(spacing: 15) {
                            Capsule()
                                .fill(.gray)
                                .frame(width: 40, height: 5)
                                .opacity(animateContent ? 1 : 0)
                                .offset(y: animateContent ? 0: size.height)
                            
                            HStack(alignment: .top, spacing: 15) {
                                Button {
                                    withAnimation {
                                        expandSheet.toggle()
                                        animateContent.toggle()
                                    }
                                } label: {
                                    Image(.carret)
                                        .resizable()
                                        .renderingMode(.template)
                                        .scaledToFit()
                                        .foregroundStyle(.white)
                                        .frame(width: 24, height: 24)
                                }
                                VStack(alignment: .center, spacing: 4) {
                                    Text("Playing from playlist".uppercased())
                                        .foregroundColor(.white.opacity(0.70))
                                        .font(.system(size: 18, weight: .bold))
                                    Text("Don")
                                        .foregroundColor(.white.opacity(0.70))
                                        .font(.system(size: 14, weight: .regular))
                                }
                                .frame(maxWidth: .infinity, alignment: .center)
                            }
                            .opacity(animateContent ? 1 : 0)
                            .offset(y: animateContent ? 0: size.height)
                            
                            GeometryReader {
                                let size = $0.size
                                Image("Art")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: size.width, height: size.height)
                                    .clipShape(RoundedRectangle(cornerRadius: animateContent ? 15 : 5, style: .continuous))
                            }
                            .matchedGeometryEffect(id: "Art", in: animation)
                            .frame(height: size.width - 50)
                            .padding(.vertical, size.height < 700 ? 10 : 30)
                            
                            playerView(size)
                                .offset(y: animateContent ? 0: size.height)
                            
                            
                        }
                        .padding(.top, safeArea.top + (safeArea.bottom == 0 ? 10 : 0))
                        .padding(.bottom, safeArea.bottom == 0 ? 10 :  safeArea.bottom)
                        .padding(.horizontal, 15)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                        .clipped()
                        
                    }
                    .offset(y: offsetY)
                    .contentShape(Rectangle())
                    .gesture(DragGesture()
                        .onChanged({ (value) in
                            let translationY = value.translation.height
                            offsetY = (translationY > 0 ? translationY : 0)
                        }).onEnded({ (value) in
                            if offsetY > size.height * 0.4 {
                                withAnimation {
                                    expandSheet.toggle()
                                    animateContent.toggle()
                                }
                            } else {
                                offsetY = .zero
                            }
                            
                        }))
                    .ignoresSafeArea(.container, edges: .all)
                }
                .onAppear {
                    withAnimation {
                        animateContent.toggle()
                    }
                }
            }
        }
    }
    
    private func playerView(_ mainSize: CGSize) -> some View {
        GeometryReader {
            let size = $0.size
            let spacing = size.height * 0.04
            VStack(spacing: spacing) {
                VStack(spacing: spacing) {
                    HStack(alignment: .center, spacing: 15) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Look what yoiu Made Me do")
                                .foregroundStyle(.white)
                                .font(.system(size: 18, weight: .regular))
                                .lineLimit(1)
                            Text("Look what yoiu Made Me do")
                                .foregroundStyle(.white.opacity(0.70))
                                .font(.system(size: 16, weight: .regular))
                                .lineLimit(1)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Button {
                            
                        } label: {
                            Image(.heart)
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(.white)
                                .frame(width: 24, height: 24)
                        }
                    }
                    
                    durationSlider(_mainSize: size)
                    
                    HStack(alignment: .center, spacing: 15)  {
                        Text("0.0")
                            .foregroundColor(.white.opacity(0.70))
                            .font(.system(size: 14, weight: .regular))
                        Spacer()
                        Text("5.30")
                            .foregroundColor(.white.opacity(0.70))
                            .font(.system(size: 14, weight: .regular))
                    }
                }
                .frame(height: size.height/2.5)
                
                HStack(spacing: size.width * 0.14) {
                    Button {
                    } label: {
                        Image(.playerRepeat)
                            .resizable()
                            .renderingMode(.template)
                            .scaledToFit()
                            .foregroundStyle(.white)
                            .frame(width: 24, height: 24)
                    }
                    
                    Button {
                    } label: {
                        Image(.previous)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                    }
                    
                    Button {
                    } label: {
                        Image(.play)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .padding(19)
                            .background(.white)
                            .clipShape(Circle())
                    }
                    
                    Button {
                    } label: {
                        Image(.next)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                    }
                    
                    Button {
                    } label: {
                        Image(.playerShuffle)
                            .resizable()
                            .renderingMode(.template)
                            .scaledToFit()
                            .foregroundStyle(.white)
                            .frame(width: 24, height: 24)
                    }
                }
                .frame(maxWidth: .infinity)
                
                HStack(spacing: size.width * 0.14) {
                    Button {
                        
                    } label: {
                        Image(.speaker)
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.white)
                            .frame(width: 24, height: 24)
                    }
                    
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(.share)
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.white)
                            .frame(width: 24, height: 24)
                    }
                    
                    Button {
                    } label: {
                        Image(.queue)
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.white)
                            .frame(width: 24, height: 24)
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
    
    private func durationSlider(_mainSize: CGSize) -> some View {
        ZStack {
            GeometryReader {
                let size = $0.size
                ZStack(alignment: .leading) {
                    Capsule()
                        .fill(Color.white.opacity(0.30))
                        .frame(height: 3)
                    Capsule()
                        .fill(Color.green)
                        .frame(width: 0.10 * size.width, height: 3)
                    Circle()
                        .fill(Color.white)
                        .frame(width: 18, height: 18)
                        .padding(.leading, 0.10 * size.width )
                }
                .gesture(DragGesture()
                    .onChanged({ (value) in
//                        let xValue = value.location.x
                        //                        musicPlayerManager.percentProgress = xValue / metrics.size.width
                    }).onEnded({ (value) in
//                        let xValue = value.location.x
//                        let percent = xValue / size.width
                        //                        musicPlayerManager.playerCurrentTime = Double(percent) * musicPlayerManager.playerDuration
                    }))
            }
            .frame(height: 20)
        }
    }
}
