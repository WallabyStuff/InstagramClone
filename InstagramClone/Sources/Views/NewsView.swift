//
//  NewsView.swift
//  InstagramClone
//
//  Created by 이승기 on 2022/07/31.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        HStack {
            LinearGradient.instaGradient
            .mask(
                Image("round_star_shield")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20)
            )
            .frame(width: 20)
            
            Text("Lorem ipsum dolor sit amet, consentetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore mgna aliqua.")
                .font(.system(size: 12))
            
            Button {
                // do something
            } label: {
                Image(systemName: "xmark")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 12)
                    .foregroundColor(.gray)
            }
        }
        .padding(.DEFAULT_HORIZONTAL_SPACING)
    }
}
