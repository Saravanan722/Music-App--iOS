//
//  ThemeManager.swift
//  InfinityMusic
//
//  Created by Saravanan T on 20/11/24.
//

import SwiftUI

struct ThemeManager {
    private init() {}

    static let backgroundColor = Color(hex: 0x030303)
    static let backgroundLinear = LinearGradient(
        gradient: Gradient(colors: [.red, .yellow, .green]),
        startPoint: .leading,
        endPoint: .trailing
    )
    static let textColor = Color(light: .black, dark: .white)
    static let textColor1 = Color.white
    static let textColor2 = Color.gray
    static let linearForgroundSyleText = LinearGradient(
        gradient: Gradient(colors: [.red, .yellow, .green]),
        startPoint: .leading,
        endPoint: .trailing
    )
}
