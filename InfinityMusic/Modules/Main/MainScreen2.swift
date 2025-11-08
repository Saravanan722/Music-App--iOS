//
//  MainScreen2.swift
//  InfinityMusic
//
//  Created by Saravanan T on 29/11/24.
//

import SwiftUI

struct MainScreen2: View {
    @State private var selectedTab = 0
    @State private var offset: CGFloat = 0
    @State private var lastDragOffset: CGFloat = 0
    @State private var progress: CGFloat = 0
    var body: some View {
        GeometryReader {
            let size = $0.size
            let sideBarWidth: CGFloat = 300
            ZStack(alignment: .leading) {
                SideBarView()
                    .frame(width: sideBarWidth)
                    .offset(x: -sideBarWidth)
                    .offset(x: offset)
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
                            Image(.me)
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 24, height: 24)
                                .foregroundStyle(selectedTab == 3 ? .white: .gray.opacity(0.70))
                            
                            Text("Premium")
                                .foregroundStyle(selectedTab == 3 ? .white: .gray.opacity(0.70))
                                .font(.system(size: 10, weight: .regular))
                        }
                        .toolbarBackground(.visible, for: .tabBar)
                        .toolbarBackground(.ultraThinMaterial, for: .tabBar)
                }
                .tint(.white)
                .toolbar(.visible, for: .tabBar)
                .offset(x: offset)
                .animation(.default, value: offset)
                .overlay {
                    Rectangle()
                        .fill(.black.opacity(0.24))
                        .ignoresSafeArea(.all)
                        .opacity(progress)
                        .onTapGesture {
                            offset = 0
                        }
                }
            }
            .gesture(DragGesture()
                .onChanged( { value in
                    let translation = value.translation.width + lastDragOffset
                    offset = max(min(translation, sideBarWidth), 0)
                    progress = max(min(translation / sideBarWidth, 1), 0)
                }).onEnded({value in
                    let velocity = value.translation.width / 3
                    withAnimation(.snappy(duration: 0.25, extraBounce: 0)) {
                        if (velocity + offset) > (sideBarWidth * 0.5) {
                            offset = sideBarWidth
                            progress = 1
                        } else {
                            offset = 0
                            progress = 0
                        }
                    }
                    lastDragOffset = offset
                })
            )
            //            .gesture(
            //                CustomGesture { gesture in
            //                    let state = gesture.state
            //                    let translation = gesture.translation(in: gesture.view).x + lastDragOffset
            //                    let velocity = gesture.velocity(in: gesture.view).x / 3
            //                    if state == .began || state == .changed {
            //                        offset = max(min(translation, sideBarWidth), 0)
            //                        progress = max(min(translation / sideBarWidth, 1), 0)
            //                    } else {
            //                        withAnimation(.snappy(duration: 0.25, extraBounce: 0)) {
            //                            if (velocity + offset) > (sideBarWidth * 0.5) {
            //                                offset = sideBarWidth
            //                                progress = 1
            //                            } else {
            //                                offset = 0
            //                                progress = 0
            //                            }
            //                        }
            //                        lastDragOffset = offset
            //                    }
            //                }
            //            )
        }
    }
}


#Preview {
    MainScreen2()
}

struct CustomGesture: UIGestureRecognizerRepresentable {
    var handle: (UIPanGestureRecognizer) -> ()
    func makeUIGestureRecognizer(context: Context) -> UIPanGestureRecognizer {
        let gesture = UIPanGestureRecognizer()
        return gesture
    }
    
    func updateUIGestureRecognizer(_ recognizer: UIPanGestureRecognizer, context: Context) {

    }
    
    func handleUIGestureRecognizerAction(_ recognizer: UIPanGestureRecognizer, context: Context) {
        handle(recognizer)
    }
}
struct CustomTabView: View {
    enum Tabs: String {
        case home, search, mylist, profile
//             musicHome, library, podcast, action

        var customationID: String {
            "com.innorrlay.myapp.\(rawValue)"
        }
    }
    @State var selectedTab: Tabs = .home
    @AppStorage("TabCustomizations")
    private var customizations: TabViewCustomization
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab(value: .home) {
                Text("First")
            } label: {
                Image(.home)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 24, height: 24)
                    .foregroundStyle(.white)

                Text("Home")
                    .foregroundStyle(.white)
                    .font(.system(size: 10, weight: .regular))
            }
            .tabPlacement(.pinned)
            .customizationID(Tabs.home.customationID)
            .customizationBehavior(.disabled, for: .tabBar)

//            TabSection("My Library") {
//                Tab(value: Tabs.library) {
//                    Text("Third")
//                } label: {
//                  Text("Music Library")
//                        .foregroundStyle(.white)
//                        .font(.system(size: 10, weight: .regular))
//                }
//                .customizationID(Tabs.library.customationID)
//
//                Tab(value: Tabs.podcast) {
//                    Text("Fourth")
//                } label: {
//                    Text("Podcasts")
//                        .foregroundStyle(.white)
//                        .font(.system(size: 10, weight: .regular))
//                }
//                .customizationID(Tabs.podcast.customationID)
//            }
//            .customizationID(Tabs.musicHome.customationID)
//            .sectionActions {
//                Button {
//                    customizations.resetSectionOrder()
//                } label: {
//                    Text("Reset Tab Order")
//                        .foregroundStyle(.white)
//                }
//            }
//            .customizationID(Tabs.action.customationID)

            Tab(value: .search) {
                Text("Second")
            } label: {
                Image(.search)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 24, height: 24)
                    .foregroundStyle(.white)

                Text("Search")
                    .foregroundStyle(.white)
                    .font(.system(size: 10, weight: .regular))
            }
            .tabPlacement(.sidebarOnly)
            .customizationID(Tabs.search.customationID)

            Tab(value: .mylist) {
                Text("Second")
            } label: {
                Image(systemName: "list.bullet.circle.fill")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 24, height: 24)
                    .foregroundStyle(.white)

                Text("MyList")
                    .foregroundStyle(.white)
                    .font(.system(size: 10, weight: .regular))
            }
            .customizationID(Tabs.mylist.customationID)

            Tab(value: .profile) {
                Text("Second")
            } label: {
                Image(.me)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 24, height: 24)
                    .foregroundStyle(.white)

                Text("My Profile")
                    .foregroundStyle(.white)
                    .font(.system(size: 10, weight: .regular))
            }
            .customizationID(Tabs.profile.customationID)
        }
        .tabViewStyle(.sidebarAdaptable)
        .tabViewCustomization($customizations)
        .tabViewSidebarHeader {
            Label("Innorelay", systemImage: "star.fill")
                .font(.title)
                .bold()
                .foregroundStyle(.primary)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .tabViewSidebarFooter {
            Text("Made with ❤️ by Innorelay")
                .foregroundStyle(.secondary)
        }
        .tabViewSidebarBottomBar {
            Button {

            } label: {
                Text("Logout")
                    .foregroundStyle(.secondary)
            }
        }
    }
}
