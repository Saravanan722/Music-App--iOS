//
//  HomeScreen.swift
//  InfinityMusic
//
//  Created by Saravanan T on 14/10/24.
//

import SwiftUI

struct HomeScreen: View {
    @StateObject private var viewModel = HomeViewModel()
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    CategoryRowMusicView(layout: viewModel.layoutHome)
                        .padding(.bottom, 70)
                }
            }
            .preferredColorScheme(.dark)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .toolbar {
                ScrollView(.horizontal) {
                    HStack {
                        Text("S")
                            .padding(.horizontal)
                            .foregroundStyle(.white)
                            .font(.system(size: 16, weight: .medium))
                            .frame(height: 32)
                            .overlay {
                                Circle()
                                    .stroke(Color.white.opacity(0.29), lineWidth: 1)
                            }
                            .background(.pink.opacity(0.50))
                            .clipShape(Circle())
                        HStack {
                            Text("All")
                                .font(.system(size: 14, weight: .regular))
                                .foregroundStyle(.black)
                        }
                        .padding(.horizontal)
                        .frame(height: 32)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.green.opacity(0.29), lineWidth: 1)
                        )
                        .background(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        
                        ForEach(viewModel.layout, id:  \.self) { category in
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
                }
            }
        }
    }
}


#Preview {
    HomeScreen()
}
