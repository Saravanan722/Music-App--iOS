//
//  SearchScreen.swift
//  InfinityMusic
//
//  Created by Saravanan T on 14/10/24.
//

import SwiftUI

struct SearchScreen: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    
                }
                .scrollable()
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
                        Text("Search")
                            .foregroundStyle(.white)
                            .font(.system(size: 24, weight: .medium))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "photo")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    SearchScreen()
}
