//
//  NavView.swift
//  InstagramClone
//
//  Created by 이승기 on 2022/07/31.
//

import SwiftUI

struct NavView: View {
    var colWidth: CGFloat
    
    var body: some View {
        VStack {
            HStack {
                Text("Instagram")
                    .font(.system(size: 28, weight: .light))
                
                Spacer()
                
                Button {
                    // do something
                } label: {
                    Image("send")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                }
            }
            .padding(.DEFAULT_HORIZONTAL_SPACING)
            
            Divider()
        }
    }
}
