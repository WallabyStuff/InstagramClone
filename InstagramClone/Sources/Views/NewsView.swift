//
//  NewsView.swift
//  InstagramClone
//
//  Created by 이승기 on 2022/07/31.
//

import SwiftUI

struct NewsView: View {
    static let NEWS_VIEW_SHOWING_STATE = "NEWS_VIEW_SHOWING_STATE"
    @State private var isNewsViewHidden = false
    
    var body: some View {
        if isNewsViewHidden == false {
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
                    withAnimation {
                        isNewsViewHidden.toggle()
                    }
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
}

extension View {
    @ViewBuilder
    func isHidden(_ shouldHide: Bool) -> some View {
        opacity(shouldHide ? 0 : 1)
    }
}
