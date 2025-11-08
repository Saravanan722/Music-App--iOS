//
//  RegisterScreen.swift
//  InfinityMusic
//
//  Created by Saravanan T on 14/11/24.
//

import SwiftUI

struct RegisterScreen: View {
    @State private var Fname = ""
    @State private var Lname = ""
    @EnvironmentObject private var appSwitcherViewModel: AppSwicherViewModel
    var body: some View {
        ZStack {
            Color.black
            VStack(alignment: .leading, spacing: 20) {
                Spacer()
                Text("Welcome to Infinity Music")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 40)
                
                Text("Access exclusive content and personalized recommendations! Log in now to get started.")
                    .font(.system(size: 15, weight: .regular))
                    .foregroundColor(Color.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                InfoField(tittle: "First Name", text: $Fname)
                InfoField(tittle: "Last Name", text: $Lname)
                Spacer()
                Button {
                    appSwitcherViewModel.screen = .main
                } label: {
                    Text("Start")
                        .padding(.leading)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .foregroundStyle(.white)
                        .background(Color.yellow, in: RoundedRectangle(cornerRadius: 14).stroke(lineWidth: 2))
                }
                Spacer()
            }
            .padding(.horizontal, 15)
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    RegisterScreen()
}
