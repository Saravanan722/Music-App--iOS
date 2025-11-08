//
//  DetailScreen.swift
//  InfinityMusic
//
//  Created by Saravanan T on 21/10/24.
//

import SwiftUI

struct DetailScreen: View {
    @StateObject private var viewModel = DetailViewModel(detail: .init(
        id: "671205f0ecb0223d4816f4ac",
        contentId: "02834541afff47a8ae86653be9744ebf",
        customerId: 2,
        albumType: "",
        contentName: "Engeyum Eppothum",
        isPremium: false,
        contentType: "album",
        albumImages1: [
            .init(
                imageUrl: "https://innorelay-demo1.b-cdn.net/v1/images/banner/videos/99f089dcb0ba4c82b7f0bcfa7759e1d0/s1.jfif",
                imageType: "s1"
            ),
            .init(
                imageUrl: "https://innorelay-demo1.b-cdn.net/v1/images/banner/videos/99f089dcb0ba4c82b7f0bcfa7759e1d0/s2.jfif",
                imageType: "s2"
            ),
            .init(
                imageUrl: "https://innorelay-demo1.b-cdn.net/v1/images/banner/videos/99f089dcb0ba4c82b7f0bcfa7759e1d0/s3.jfif",
                imageType: "s3"
            ),
            .init(
                imageUrl: "https://innorelay-demo1.b-cdn.net/v1/images/banner/videos/99f089dcb0ba4c82b7f0bcfa7759e1d0/s1.webp",
                imageType: "s1webp"
            ),
            .init(
                imageUrl: "https://innorelay-demo1.b-cdn.net/v1/images/banner/videos/99f089dcb0ba4c82b7f0bcfa7759e1d0/s2.webp",
                imageType: "s2webp"
            ),
            .init(
                imageUrl: "https://innorelay-demo1.b-cdn.net/v1/images/banner/videos/99f089dcb0ba4c82b7f0bcfa7759e1d0/s3.webp",
                imageType: "s3webp"
            )
        ],
        albumImages2: [
            .init(
                imageUrl: "https://innorelay-demo1.b-cdn.net/v1/images/banner/videos/21c67d918d0f4dfcbb250fbfb25fb325/s1.jfif",
                imageType: "s1"
            ),
            .init(
                imageUrl: "https://innorelay-demo1.b-cdn.net/v1/images/banner/videos/21c67d918d0f4dfcbb250fbfb25fb325/s2.jfif",
                imageType: "s2"
            ),
            .init(
                imageUrl: "https://innorelay-demo1.b-cdn.net/v1/images/banner/videos/21c67d918d0f4dfcbb250fbfb25fb325/s3.jfif",
                imageType: "s3"
            ),
            .init(
                imageUrl: "https://innorelay-demo1.b-cdn.net/v1/images/banner/videos/21c67d918d0f4dfcbb250fbfb25fb325/s1.webp",
                imageType: "s1webp"
            ),
            .init(
                imageUrl: "https://innorelay-demo1.b-cdn.net/v1/images/banner/videos/21c67d918d0f4dfcbb250fbfb25fb325/s2.webp",
                imageType: "s2webp"
            ),
            .init(
                imageUrl: "https://innorelay-demo1.b-cdn.net/v1/images/banner/videos/21c67d918d0f4dfcbb250fbfb25fb325/s3.webp",
                imageType: "s3webp"
            )
        ],
        duration: 1161,
        releasedAt: "2011-09-16",
        languages: .init(
            languageId: "378dde8df0d84e95b6f50c2b05a380a5",
            languageName: "Tamil",
            localName: "",
            imageId: ""
        ),
        md1: .init(
            castId:  "3507a6da234a467f9c6e829b0d9a07a7",
            castName: "C. Sathya"
        ),
        md2: .init(
            castId:  "",
            castName: ""
        ),
        productionHouse: .init(
            productionHouseId: "998c0db8cc5940b3b843e3eee0f105ca",
            productionHouseName: "A.R.Murugadoss Productions",
            bannerImage: ""
        ),
        description: "Engeyum Eppothum (2011) is a Tamil romantic drama that follows the lives of four individuals whose fates intertwine after a tragic bus accident. The film explores love, relationships, and the unpredictability of life through parallel storylines.",
        tracksCount: 5,
        myList: false
    ))
    @Environment(\.colorScheme) var scheme
    @Environment(\.presentationMode) var presentationMode
    @State var measuring = false
    let blue = Color(#colorLiteral(red: 0, green: 0.3725490196, blue: 1, alpha: 1))
    let red = Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
    var body: some View {
        GeometryReader {
            let safeArea = $0.safeAreaInsets
            let size = $0.size
            MusicDetailView(safeArea: safeArea, size: size, data: viewModel.detail)
                .ignoresSafeArea(.container, edges: .top)
                .navigationBarBackButtonHidden()
        }
    }
    
    private func card(track: [Track]) -> some View {
        VStack {
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
    }
    
    private func headerCard() -> some View {
        VStack(alignment: .leading) {
            HStack {
                if viewModel.offset > 200 {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 20, weight: .bold))
                            .frame(width: 24, height: 24)
                            .foregroundColor(.primary)
                    }
                    .opacity(viewModel.offset > 200 ? 1 - Double((viewModel.offset - 200) / 50) : 0)
                }
                
                Text(viewModel.detail.contentName)
                    .foregroundStyle(.white)
                    .font(.system(size: 24, weight: .bold))
            }
            .padding(.bottom)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .background(scheme == .dark ? Color.black : Color.white)
        .overlay(alignment: .trailing) {
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
            .opacity(viewModel.offset > 200 ? Double((viewModel.offset - 200) / 50) : 0)
            .offset(y: 10)
        }
    }
    
    private func playerControl() -> some View {
        HStack {
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
            
            
            Button {
                
            } label: {
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.green)
                    .frame(width: 24, height: 24)
            }
            
            Button {
                
            } label: {
                Image(systemName: "arrow.down.circle")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.white)
                    .frame(width: 24, height: 24)
            }
            
            Button {
                
            } label: {
                Image(.more)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.white)
                    .frame(width: 24, height: 24)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(.playerShuffle)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.white)
                    .frame(width: 24, height: 24)
            }
            
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
        }
    }
}

#Preview {
    DetailScreen()
}
