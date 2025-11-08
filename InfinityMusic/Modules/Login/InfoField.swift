//
//  InfoField.swift
//  InfinityMusic
//
//  Created by Saravanan T on 14/11/24.
//

import SwiftUI

struct InfoField: View {
    let tittle: String
    @Binding var text: String
    @FocusState var isTyping: Bool
    var body: some View {
        ZStack(alignment: .leading) {
            TextField("", text: $text)
                .padding(.leading)
                .frame(height: 55)
                .foregroundStyle(ThemeManager.textColor1)
                .focused($isTyping)
                .background(isTyping ? .blue : Color.yellow, in: RoundedRectangle(cornerRadius: 14).stroke(lineWidth: 2))

            Text(tittle)
                .padding(.horizontal, 5)
                .background(.black.opacity(isTyping || !text.isEmpty ? 1 : 0))
                .foregroundStyle(isTyping ? .blue : Color.yellow)
                .padding(.leading)
                .offset(y: isTyping || !text.isEmpty ? -27 : 0)
                .onTapGesture {
                    isTyping.toggle()
                }
        }
        .animation(.linear(duration: 0.2), value: isTyping)
    }
}
