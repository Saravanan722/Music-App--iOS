//
//  OnboardViewModel.swift
//  InfinityMusic
//
//  Created by Saravanan T on 14/11/24.
//

import Foundation

final class OnboardViewModel: ObservableObject {
    let onboardList: [Onboard] = [
        Onboard(
            title: "Stream your favorite \nmusic anytime, anywhere",
            description: "Access your top tracks, playlists, and albums seamlessly wherever you go.",
            imageUrl: "onboard",
            tag: 0
        ),

        Onboard(
            title: "We'll recommend the perfect tunes for you",
            description: "Discover handpicked songs, albums, and playlists uniquely tailored to your taste.",
            imageUrl: "onboard1",
            tag: 1
        ),

        Onboard(
            title: "Enjoy unlimited music \nwith a subscription",
            description: "Unlock premium features, endless music, and exclusive content with one simple plan.",
            imageUrl: "onboard2",
            tag: 2
        )
    ]
}
