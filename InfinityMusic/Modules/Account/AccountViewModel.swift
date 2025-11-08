//
//  AccountViewModel.swift
//  InfinityMusic
//
//  Created by Saravanan T on 23/11/24.
//

import Foundation

@MainActor
final class AccountViewModel: ObservableObject {
    @Published var plan:[Plan] = [
        .init(
            typedata: "Mini",
            dayType: "for 1 week",
            cast: 29,
            oneTimePayment: false,
            symble: "$",
            access: [
                "1 mobile -only Premium account",
                "Offline listening of up 30 songs on 1 device",
                "One-time Payment",
                "Basic audio quality"
            ]
        ),
        .init(
            typedata: "Individual",
            dayType: "month",
            cast: 119,
            oneTimePayment: true,
            symble: "$",
            access: [
                "1 mobile -only Premium account",
                "Offline listening of up 30 songs on 1 device",
                "One-time Payment",
                "Basic audio quality"
            ]
        ),
        
            .init(
                typedata: "Duo",
                dayType: "month",
                cast: 149,
                oneTimePayment: true,
                symble: "$",
                access: [
                    "1 mobile -only Premium account",
                    "Offline listening of up 30 songs on 1 device",
                    "One-time Payment",
                    "Basic audio quality"
                ]
            ),
        
            .init(
                typedata: "Family",
                dayType: "month",
                cast: 179,
                oneTimePayment: true,
                symble: "$",
                access: [
                    "1 mobile -only Premium account",
                    "Offline listening of up 30 songs on 1 device",
                    "One-time Payment",
                    "Basic audio quality"
                ]
            ),
        .init(
            typedata: "Student",
            dayType: "month",
            cast: 59,
            oneTimePayment: false,
            symble: "$",
            access: [
                "1 mobile -only Premium account",
                "Offline listening of up 30 songs on 1 device",
                "One-time Payment",
                "Basic audio quality"
            ]
        )
    ]
}

struct Plan: Identifiable {
    let id = UUID()
    let typedata: String
    let dayType: String
    let cast: Double
    let oneTimePayment: Bool
    let symble: String
    let access: [String]
}
