//
//  MusicDetailView.swift
//  InfinityMusic
//
//  Created by Saravanan T on 21/11/24.
//

import SwiftUI

struct MusicDetailView: View {
    var safeArea: EdgeInsets
    var size: CGSize
    var data: Album
    @State var measuring = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                // MARK: - Artwork
                Artwork()
                
                // Since We ignored Top Edge
                GeometryReader{ proxy in
                    let height = size.height * 0.45
                    let size = proxy.size
                    let minY = proxy.frame(in: .named("SCROLL")).minY - safeArea.top
                    playerControl(height: height, size: size, minY: minY)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding(.horizontal)
                        .offset(y: minY < 50 ? -(minY - 50) : 0)
                }
                .frame(height: 50)
                .padding(.top, -34)
                .zIndex(1)
                
                VStack{
                    //                    Text("Popular")
                    //                        .fontWeight(.heavy)
                    //
                    //                    // MARK: - Album View
                    AlbumView(track: audio)
                }
                //                .padding(.top, 10)
                .zIndex(0)
                
            }
            .overlay(alignment: .top) {
                HeaderView()
            }
            
        }
        .coordinateSpace(name: "SCROLL")
    }
    
    private func playerControl(height: CGFloat, size: CGSize, minY: CGFloat) -> some View {
        let progress = minY / (height * (minY > 0 ? 0.5 : 0.8))
        return HStack {
            ColorCardAnimationView1(measuring: $measuring)
                .opacity(progress)
            
            Button {
                
            } label: {
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.green)
                    .frame(width: 24, height: 24)
            }
            .opacity(progress)
            
            Button {
                
            } label: {
                Image(systemName: "arrow.down.circle")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.white)
                    .frame(width: 24, height: 24)
            }
            .opacity(progress)
            
            Button {
                
            } label: {
                Image(.more)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.white)
                    .frame(width: 24, height: 24)
            }
            .opacity(progress)
            
            Spacer()
            
            Button {
                
            } label: {
                Image(.playerShuffle)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.white)
                    .frame(width: 24, height: 24)
            }
            .opacity(progress)
            
            Button {
                
            } label: {
                Image(.play)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.black)
                    .frame(width: 24, height: 24)
                    .frame(width: 48, height: 48)
                    .background(.green)
                    .clipShape(Circle())
            }
            .opacity(progress)
        }
    }
    
    @ViewBuilder
    func Artwork() -> some View {
        let height = size.height * 0.45
        GeometryReader{ proxy in
            
            let size = proxy.size
            let minY = proxy.frame(in: .named("SCROLL")).minY
            let progress = minY / (height * (minY > 0 ? 0.5 : 0.8))
            
            Color.yellow
                .frame(width: size.width, height: size.height + (minY > 0 ? minY : 0 ))
                .clipped()
                .overlay(content: {
                    ZStack(alignment: .bottom) {
                        Rectangle()
                            .fill(
                                .linearGradient(colors: [
                                    .black.opacity(0 - progress),
                                    .black.opacity(0.1 - progress),
                                    .black.opacity(0.3 - progress),
                                    .black.opacity(0.5 - progress),
                                    .black.opacity(0.8 - progress),
                                    .black.opacity(1),
                                ], startPoint: .top, endPoint: .bottom)
                            )
                        VStack(spacing: 0) {
                            Image("Art")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 200)
                                .padding(.top, 15)
                                .scaleEffect((1 + progress))
                                .clipped()
                            Text(data.contentName)
                                .font(.system(size: 24))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            
                            Text(data.contentName.uppercased())
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(.gray)
                                .padding(.top, 15)
                        }
                        .opacity(1 + (progress > 0 ? -progress : progress))
                        .padding(.bottom, 35)
                        .padding(.horizontal)
                        
                        // Moving with Scroll View
                        
                        .offset(y: minY < 0 ? minY : 0 )
                    }
                })
                .offset(y: -minY)
            
            
        }
        .frame(height: height + safeArea.top )
    }
    
    func AlbumView(track: [Track]) -> some View {
        VStack(spacing:  25) {
            ForEach(track, id: \.contentId ) { data in
                HStack {
                    ForEach(data.albumImages1, id: \.imageType) { image in
                        if image.imageType == "s2" {
                            CardView(url: image.imageUrl)
                                .frame(width: 48, height: 48)
                        }
                    }
                    VStack(alignment: .leading) {
                        Text(data.contentName)
                            .foregroundStyle(.white)
                            .font(.system(size: 16, weight: .medium))
                            .lineLimit(1)
                        Text(data.md1.castName)
                            .foregroundStyle(.white.opacity(0.70))
                            .font(.system(size: 16, weight: .medium))
                            .lineLimit(1)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    Button {
                        
                    } label: {
                        Image(.more)
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(.white)
                            .frame(width: 24, height: 24)
                    }
                }
            }
        }
        .padding(15)
    }
    
    func HeaderView() -> some View {
        GeometryReader{ proxy in
            let minY = proxy.frame(in: .named("SCROLL")).minY
            let height = size.height * 0.45
            let progress = minY / (height * (minY > 0 ? 0.5 : 0.8))
            let titleProgress =  minY / height
            
            HStack(spacing: 15) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 20, weight: .bold))
                        .frame(width: 24, height: 24)
                        .foregroundColor(.primary)
                }
                Spacer(minLength: 0)
                
                //
                //                Button {
                //
                //                } label: {
                //                    Text("Like")
                //                        .font(.caption)
                //                        .fontWeight(.semibold)
                //                        .foregroundColor(.white)
                //                        .padding(.horizontal, 10)
                //                        .padding(.vertical, 6)
                //                        .border(.white, width: 1.5)
                //                }
                //                .opacity(1 + progress)
                
                Button {
                    
                } label: {
                    Image(systemName: "heart.fill")
                        .font(.title3)
                        .foregroundColor(.red)
                }
                .opacity(1 + progress)
            }
            .overlay(content: {
                Text(data.contentName)
                    .fontWeight(.semibold)
                    .offset(y: -titleProgress > 0.75 ? 0 : 45)
                    .clipped()
                    .animation(.easeOut(duration: 0.25), value: -titleProgress > 0.75)
            })
            .padding(.top, safeArea.top + 10)
            .padding([.horizontal,.bottom], 15)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .opacity(-progress > 1 ? 1 : 0)
                    .overlay(alignment: .bottomTrailing) {
                        Button {
                            
                        } label: {
                            Image(.play)
                                .resizable()
                                .renderingMode(.template)
                                .foregroundStyle(.black)
                                .frame(width: 24, height: 24)
                                .frame(width: 48, height: 48)
                                .background(.green)
                                .clipShape(Circle())
                                .padding(.horizontal)
                        }
                        .offset(y: 15)
                        .opacity(-progress > 1 ? 1 : 0)
                    }
            )
            .offset(y: -minY)
        }
        .frame(height: 35)
    }
}
