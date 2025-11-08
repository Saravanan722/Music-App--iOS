//
//  DetailViewModel.swift
//  InfinityMusic
//
//  Created by Saravanan T on 22/10/24.
//

import Foundation

@MainActor
final class DetailViewModel: ObservableObject {
    @Published var offset: CGFloat = 0
    @Published var detail: Album
    
    init(detail: Album) {
        self.detail = detail
    }
}
