//
//  MyLibraryScreen.swift
//  InfinityMusic
//
//  Created by Saravanan T on 14/10/24.
//

import SwiftUI

struct MyLibraryScreen: View {
    @StateObject var viewModel = MyLibraryViewModel()
    @State var layout = ["Album", "Music", "Podcasts"]
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    HStack {
                        ForEach(layout, id:  \.self) { category in
                            HStack {
                                Text(category.capitalized)
                                    .font(.system(size: 14, weight: .regular))
                                    .foregroundStyle(.white)
                            }
                            .padding(.horizontal)
                            .frame(height: 32)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.white.opacity(0.29), lineWidth: 1)
                            )
                            .background(.white.opacity(0.15))
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    .scrollable(.horizontal, showsIndicators: false)
                    VStack {
                        HStack {
                            Image(systemName: "arrow.up.arrow.down")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(.white)
                            
                            Text("Recets")
                                .foregroundStyle(.white)
                                .font(.system(size: 14, weight: .regular))
                            
                            Spacer()
                            
                            Image(systemName: "list.bullet.circle.fill")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(.white)
                        }
                        .padding(.horizontal)
                    }
                    .padding(.top)
                    .scrollable()
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Text("S")
                            .padding(8)
                            .foregroundStyle(.white)
                            .font(.system(size: 16, weight: .medium))
                            .frame(height: 32)
                            .overlay {
                                Circle()
                                    .stroke(Color.white.opacity(0.29), lineWidth: 1)
                            }
                            .background(.pink.opacity(0.50))
                            .clipShape(Circle())
                        Text("Your Library")
                            .foregroundStyle(.white)
                            .font(.system(size: 24, weight: .medium))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.white)
                        
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.white)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }
    }
    
    
}


//TabView {
//    ForEach(0..<5) { index in
//        GeometryReader { geometry in
//            ZStack {
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(Color.blue) .shadow(radius: 10)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 25)
//                            .stroke(Color.white, lineWidth: 4) )
//                Text("View \(index)") .font(.largeTitle)
//                    .foregroundColor(.white)
//            }
//            .padding()
//            .rotationEffect(.degrees(Double(geometry.frame(in: .global).minX) / 10))
//            .scaleEffect(max(0.8, 1 - abs(geometry.frame(in: .global).minX) / 600))
//            .frame(width: geometry.size.width, height: geometry.size.height)
//        }
//        .padding(.horizontal, 20)
//    }
//}
//.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
