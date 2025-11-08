//
//  AccountScreen.swift
//  InfinityMusic
//
//  Created by Saravanan T on 14/10/24.
//

import SwiftUI

struct AccountScreen: View {
    @StateObject private var viewModel = AccountViewModel()
    var body: some View {
        GeometryReader {
            DetailCardView(size: $0.size, safeArea: $0.safeAreaInsets, percentageHeight: 0.5) {
                AccountCardView(plans: viewModel.plan)
                    .padding(.horizontal)
            }
            .ignoresSafeArea(.all, edges: .top)
        }
//        ZStack {
//            ScrollView {
//                VStack(spacing: 15) {
//                    AccountCardView(plans: viewModel.plan)
//                        .padding(.top, 30)
//                }
//                .padding(.bottom, 110)
//            }
//        }
//        .ignoresSafeArea(.all)
    }
}


#Preview {
    AccountScreen()
}
