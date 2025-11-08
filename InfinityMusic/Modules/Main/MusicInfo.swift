//
//  MusicInfo.swift
//  InfinityMusic
//
//  Created by Saravanan T on 14/10/24.
//

import SwiftUI

struct MusicInfo: View {
    @Binding var expandSheet: Bool
    var animation: Namespace.ID
    var body: some View {
        HStack(spacing: 0) {
            ZStack {
                if !expandSheet {
                    GeometryReader {
                        let size = $0.size
                        Image("Art")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: size.width, height: size.height)
                            .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
                    }
                    .matchedGeometryEffect(id: "Art", in: animation)
                }
            }
            .frame(width: 40, height: 40)

            Spacer(minLength: 0)
            
            Text("Look what yoiu Made Me do")
                .foregroundStyle(.white)
                .font(.system(size: 16, weight: .regular))
                .lineLimit(1)
            
            Spacer(minLength: 0)
            
            Button {

            } label: {
                Image(.speaker)
                    .renderingMode(.template)
                    .resizable()
                    .foregroundStyle(.white)
                    .frame(width: 24, height: 24)
            }
            
            Spacer(minLength: 0)
            
            Button {
                
            } label: {
                Image(.pause)
                    .renderingMode(.template)
                    .resizable()
                    .foregroundStyle(.white)
                    .frame(width: 24, height: 24)
            }
            
            Spacer(minLength: 0)

            Button {
                
            } label: {
                Image(.next)
                    .renderingMode(.template)
                    .resizable()
                    .foregroundStyle(.white)
                    .frame(width: 24, height: 24)
            }
        }
        .padding(.horizontal, 8)
        .padding(.bottom, 8)
        .frame(height: 56)
        .contentShape(RoundedRectangle(cornerRadius: 8))
        .onTapGesture {
            withAnimation {
                expandSheet.toggle()
            }
        }
    }
}
