//
//  AppSwitcherView.swift
//  InfinityMusic
//
//  Created by Saravanan T on 20/11/24.
//

import SwiftUI

struct AppSwitcherView: View {
    @StateObject var appSwicher = AppSwicherViewModel()
    var body: some View {
        VStack {
            switch appSwicher.screen {
            case .main:
                MainScreen()
                    .transition(.move(edge: .trailing))
                    .environmentObject(appSwicher)
            case .onboard:
                OnboardScreen()
                    .transition(.move(edge: .leading))
                    .environmentObject(appSwicher)
            case .registration:
                NavigationView {
                    RegisterScreen()
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                        .environmentObject(appSwicher)
                }
                .navigationViewStyle(.stack)
            case .notification:
                ReflectionView()
                    .preferredColorScheme(.dark)
                    .transition(.move(edge: .leading))
                    .environmentObject(appSwicher)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    AppSwitcherView()
}
