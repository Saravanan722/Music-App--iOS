//
//  AutoScrollViewModel.swift
//  InfinityMusic
//
//  Created by Saravanan T on 19/10/24.
//

import Foundation
import Combine

final class AutoScrollViewModel: ObservableObject {
    @Published var currentPage = 0

    private var timer: Timer?
    private var cancellation: AnyCancellable?

    init() {
        addAutoScrollTimer(pageCount: 0)
   }

    func updateViewState(_ isUserIntractive: Bool, pageCount: Int) {
        if isUserIntractive {
            addAutoScrollTimer(pageCount: pageCount)
       } else {
            cancellation?.cancel()
       }
   }

    private func addAutoScrollTimer(pageCount: Int) {
        cancellation = Timer.publish(every: 8, on: .main, in: .default)
            .autoconnect()
            .sink { [weak self] _ in
                self?.handleAutoScroll(pageCount: pageCount)
            }
    }

    @objc private func handleAutoScroll(pageCount: Int) {

        currentPage = (currentPage + 1) % pageCount
   }
}
