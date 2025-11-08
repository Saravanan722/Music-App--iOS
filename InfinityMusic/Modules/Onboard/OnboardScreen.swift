//
//  OnboardScreen.swift
//  InfinityMusic
//
//  Created by Saravanan T on 14/11/24.
//

import SwiftUI

struct OnboardScreen: View {
    @State private var selectedIndex: Int = 0
    @State private var showLogin = false
    @EnvironmentObject private var appSwitcherViewModel: AppSwicherViewModel
    @StateObject private var viewModel = OnboardViewModel()
    var body: some View {
        ZStack {
            VStack(spacing: 30) {
                TabView(selection: $selectedIndex) {
                    ForEach(viewModel.onboardList) { onboard in
                        OnboardView(data: onboard)
                            .tag(onboard.tag)
                    }
                }
                .animation(.easeInOut, value: selectedIndex)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .overlay(
                    VStack {
                        IndictorView(0 ..< viewModel.onboardList.count, selection: $selectedIndex) {
                            Color.gray
                                .frame(width: 8, height: 8)
                                .clipShape(Capsule())
                        } higlight: {
                            Color.yellow
                                .frame(width: 68, height: 8)
                                .clipShape(Capsule())
                        }
                        .padding(.bottom, 180)

                        if selectedIndex == viewModel.onboardList.count - 1 {
                            Button {
                                withAnimation {
                                    appSwitcherViewModel.screen = .registration
                                }
                            } label: {
                                HStack(spacing: 5) {
                                    Text("Get Started")
                                        .font(.system(size: 20, weight: .bold))
                                    Image("arrowRight")
                                        .resizable()
                                        .renderingMode(.template)
                                        .frame(width: 20, height: 20)
                                        .foregroundStyle(.white)
                                }
                                .frame(maxWidth: .infinity)
                                .frame(height: 58)
                                .foregroundStyle(.white)
                                .background(.yellow)
                                .cornerRadius(10)
                            }
                            .padding(.horizontal, 15)
                            .padding(.bottom, 40)
                        } else {
                            Button {
                                withAnimation {
                                    if selectedIndex == viewModel.onboardList.count - 1 {
                                        appSwitcherViewModel.screen = .registration
                                    } else {
                                        incrementPage()
                                    }
                                }
                            } label: {
                                HStack(spacing: 5) {
                                    Text("Next")
                                        .font(.system(size: 20, weight: .bold))
                                    Image("arrowRight")
                                        .resizable()
                                        .renderingMode(.template)
                                        .frame(width: 20, height: 20)
                                        .foregroundStyle(.white)
                                }
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 58)
                                .background(.yellow)
                                .cornerRadius(10)
                            }
                            .padding(.horizontal, 15)
                            .padding(.bottom, 40)
                        }
                    },
                    alignment: .bottom
                )
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
        .ignoresSafeArea(.all)
    }

    func incrementPage() {
        selectedIndex += 1
    }
}

#Preview {
    OnboardScreen()
}
