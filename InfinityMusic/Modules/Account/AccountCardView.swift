//
//  AccountCardView.swift
//  InfinityMusic
//
//  Created by Innocrux on 23/11/24
//

import SwiftUI

struct AccountCardView: View {
    let plans: [Plan]
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Button {
                
            } label: {
                Text("Get Premium Individual")
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundStyle(.black)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 55)
                    .background(.white)
                    .background(in: .rect(cornerRadius: 25))
            }
            
            Text("Terms apply")
                .font(.system(size: 14, weight: .regular))
                .foregroundStyle(.gray)
                .underline()
            
            Text("Available Plans")
                .font(.system(size: 24, weight: .regular))
                .foregroundStyle(.white)
            
            ForEach(plans) { plan in
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Image(systemName: "music.note.list")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.white)
                        Text("Premium")
                            .font(.system(size: 18, weight: .regular))
                            .foregroundStyle(.white)
                    }
                    
                    Text(plan.typedata)
                        .font(.system(size: 24, weight: .regular))
                        .foregroundStyle(.white)
                    
                    Text(plan.symble + " \(plan.cast)" + plan.dayType)
                        .font(.system(size: 18, weight: .regular))
                        .foregroundStyle(.white)
                    
                    Color.gray
                        .frame(maxWidth: .infinity, maxHeight: 1)
                    ForEach(plan.access, id: \.self) { data in
                        HStack {
                            Color.white
                                .frame(width: 5, height: 5)

                            Text( data)
                                .font(.system(size: 18, weight: .regular))
                                .foregroundStyle(.white)
                        }
                    }
                    if plan.oneTimePayment {
                        Button {
                            
                        } label: {
                            Text("Get Premium " + plan.typedata)
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundStyle(.black)
                                .padding()
                                .frame(maxWidth: .infinity, maxHeight: 55)
                                .background(.white)
                                .background(in: .rect(cornerRadius: 25))
                            
                        }
                        
                        Button {
                            
                        } label: {
                            Text("Get One-time payment")
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundStyle(.black)
                                .padding()
                                .frame(maxWidth: .infinity, maxHeight: 55)
                                .background(.white)
                                .background(in: .rect(cornerRadius: 25))
                        }
                    } else {
                        Button {
                            
                        } label: {
                            Text("Get Premium " + plan.typedata)
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundStyle(.black)
                                .padding()
                                .frame(maxWidth: .infinity, maxHeight: 55)
                                .background(.white)
                                .background(in: .rect(cornerRadius: 25))
                        }
                    }
                    
                    Text("Terms apply")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundStyle(.gray)
                        .underline()
                }
                .padding()
                .background(.ultraThickMaterial)
                .cornerRadius(10)
            }
        }
    }
}
