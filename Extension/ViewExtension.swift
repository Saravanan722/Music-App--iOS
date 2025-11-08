//
//  ViewExtension.swift
//  InfinityMusic
//
//  Created by Saravanan T on 14/10/24.
//

import SwiftUI

extension View {
    var deviceCornerRadius: CGFloat {
        let key = "_displayCornerRadius"
        if let screen = (UIApplication.shared.connectedScenes.first as!
                         UIWindowScene).windows.first?.screen {
            if let cornerRadious = screen.value(forKey: key) as? CGFloat {
                return cornerRadious
            }
            return 0
        }
        return 0
    }
}

extension View {
    func reflection(opacity: Double = 0.4, spacing: CGFloat = 0) -> some View {
        self.modifier(ReflectionModifier(opacity: opacity, spacing: spacing))
    }
}

extension View {
    func scrollable(_ axis: Axis.Set = .vertical, showsIndicators: Bool = true) -> some View {
        ScrollView(axis, showsIndicators: showsIndicators) {
            self
        }
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorners(radius: radius, corners: corners) )
    }
}

extension View {
    func inverseMask(alignment: Alignment = .center, _ content: @escaping () -> some View) -> some View {
        mask(alignment: alignment) {
            content()
                .foregroundStyle(.black)
                .background(.white)
                .compositingGroup()
                .luminanceToAlpha()
        }
    }
}
