//
//  ContentOffsetKey.swift
//  InfinityMusic
//
//  Created by Saravanan T on 15/11/24.
//

import SwiftUI

struct ContentOffsetKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue: CGFloat = CGFloat.zero
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value += nextValue()
    }
}

