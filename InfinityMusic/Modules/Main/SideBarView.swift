//
//  SideBarView.swift
//  InfinityMusic
//
//  Created by Saravanan T on 29/11/24.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Image(.art)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            
            Text("Sravanan T")
                .font(.system(size: 18, weight: .bold))
                .foregroundStyle(.white)
            
            Text("saravanansarava722@gamail.com")
                .font(.system(size: 16, weight: .bold))
                .foregroundStyle(.gray)
            
            HStack(spacing: 4) {
                Text("3.5K")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundStyle(.white)
                
                Text("Following")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundStyle(.white)
                
                Text("10.5M")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundStyle(.white)
                Text("Followers")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundStyle(.white)
            }
            .lineLimit(1)
            
            VStack(alignment: .leading, spacing: 20) {
                ForEach(SideBarAction.allCases, id: \.rawValue) { action in
                    sideBarActionButton(value: action) {
                        
                    }
                }
            }
            .padding(.top, 15)
        }
    }
    
    func sideBarActionButton(value: SideBarAction, action: @escaping () -> ()) -> some View {
        Button {
            
        } label: {
            HStack {
                Image(systemName: value.symbolImage)
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Text(value.rawValue)
                    .font(.system(size: 16, weight: .bold))
            }
            .foregroundStyle(.white)
            .padding(.vertical, 10)
            .containerShape(.rect)
        }
    }
}

#Preview {
    SideBarView()
}
