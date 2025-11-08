//
//  ColorExtension.swift
//  InfinityMusic
//
//  Created by Saravanan T on 20/11/24.
//

import SwiftUI

extension Color {
    init(hex: UInt, alpha: Double = 1.0) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255,
            green: Double((hex >> 08) & 0xFF) / 255,
            blue: Double((hex >> 00) & 0xFF) / 255,
            opacity: alpha
        )
    }

    init(light: Color, dark: Color) {
        self.init(uiColor: UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .light: return UIColor(light)
            case .dark: return UIColor(dark)
            default: return UIColor(light)
            }
        })
    }

    var uiColor: UIColor {
        UIColor(self)
    }
}

extension UIColor {
    convenience init(hex: UInt, alpha: Double = 1.0) {
        self.init(
            red: Double((hex >> 16) & 0xFF) / 255,
            green: Double((hex >> 08) & 0xFF) / 255,
            blue: Double((hex >> 00) & 0xFF) / 255,
            alpha: alpha
        )
    }
}
