//
//  AppSwicherViewModel.swift
//  InfinityMusic
//
//  Created by Saravanan T on 20/11/24.
//

import Foundation

@MainActor
final class AppSwicherViewModel: ObservableObject {
    @Published var isUserLoggedIn = true
    @Published var screen: Screen = .onboard


    init() {
        observeNotification()
    }

    private func observeNotification() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(handleUnauthorizedNotification),
            name: .unauthorizedNotification,
            object: nil
        )
    }

    @objc private func handleUnauthorizedNotification() {
        print(#function)
        logout()
    }

    func logout() {
        isUserLoggedIn = false
        screen = .onboard
    }
}

enum Screen {
    case main
    case onboard
    case registration
    case notification
}
