//
//  MainScreen.swift
//  InfinityMusic
//
//  Created by Saravanan T on 14/10/24.
//

import SwiftUI

struct MainScreen: View {
    @State private var selectedTab = 0
    @State private var expandSheet = false
    @Namespace private var animation
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeScreen()
                .tag(0)
                .tabItem {
                    Image("home")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 24, height: 24)
                        .foregroundStyle(selectedTab == 0 ? .white: .gray.opacity(0.70))
                    
                    Text("Home")
                        .foregroundStyle(selectedTab == 0 ? .white: .gray.opacity(0.70))
                        .font(.system(size: 10, weight: .regular))
                }
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(.ultraThinMaterial, for: .tabBar)
            
            SearchScreen()
                .tag(1)
                .tabItem {
                    Image(.search)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 24, height: 24)
                        .foregroundStyle(selectedTab == 1 ? .white: .gray.opacity(0.70))
                    
                    Text("Search")
                        .foregroundStyle(selectedTab == 1 ? .white: .gray.opacity(0.70))
                        .font(.system(size: 10, weight: .regular))
                }
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(.ultraThinMaterial, for: .tabBar)
            
            MyLibraryScreen()
                .tag(2)
                .tabItem {
                    Image(.library)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 24, height: 24)
                        .foregroundStyle(selectedTab == 2 ? .white: .gray.opacity(0.70))
                    
                    Text("Your Library")
                        .foregroundStyle(selectedTab == 2 ? .white: .gray.opacity(0.70))
                        .font(.system(size: 10, weight: .regular))
                }
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(.ultraThinMaterial, for: .tabBar)
            
            StickyHeaderScreen()
                .tag(3)
                .tabItem {
                    Image(.me)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 24, height: 24)
                        .foregroundStyle(selectedTab == 3 ? .white: .gray.opacity(0.70))
                    
                    Text("New")
                        .foregroundStyle(selectedTab == 3 ? .white: .gray.opacity(0.70))
                        .font(.system(size: 10, weight: .regular))
                }
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(.ultraThinMaterial, for: .tabBar)
            
            AccountScreen()
                .tag(3)
                .tabItem {
                    Image(systemName: "square.grid.3x1.folder.fill.badge.plus")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 24, height: 24)
                        .foregroundStyle(selectedTab == 4 ? .white: .gray.opacity(0.70))
                    
                    Text("Premium")
                        .foregroundStyle(selectedTab == 4 ? .white: .gray.opacity(0.70))
                        .font(.system(size: 10, weight: .regular))
                }
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(.ultraThinMaterial, for: .tabBar)
        }
        .tint(.white)
        .toolbar(expandSheet ? .hidden : .visible, for: .tabBar)
        .safeAreaInset(edge: .bottom) {
            customBottomSheet()
//                .padding(.bottom, 5)
//                .padding(.horizontal, 5)
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(.ultraThinMaterial, for: .tabBar)
        }
        .overlay {
            if expandSheet {
                ExpandedBottomSheet(expandSheet: $expandSheet, animation: animation)
                    .transition(.asymmetric(insertion: .identity, removal: .offset(y: -5)))
            }
        }
    }
    
    private func customBottomSheet() -> some View {
        ZStack {
            if expandSheet {
                Rectangle()
                    .fill(.clear)
            } else {
                Rectangle()
//                    .fill(.ultraThickMaterial)
                    .fill(.ultraThinMaterial)
                    .overlay {
                        MusicInfo(expandSheet: $expandSheet, animation: animation)
                    }
                    .matchedGeometryEffect(id: "BGVIEW", in: animation)
            }
        }
        .overlay(alignment: .bottom) {
            Rectangle()
                .fill(.white.opacity(0.3))
                .frame(height: 1)
                .offset(y: -2)
                .cornerRadius(8)
        }
        .frame(height: 56)
//        .shadow(color: .black.opacity(0.15), radius: 8, x: 0, y: 2)
//        .cornerRadius(8)
        .offset(y: -45)
    }
}

#Preview {
    MainScreen()
}

