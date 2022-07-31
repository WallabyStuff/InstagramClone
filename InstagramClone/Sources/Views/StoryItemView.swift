//
//  StoryItem.swift
//  InstagramClone
//
//  Created by 이승기 on 2022/07/31.
//

import SwiftUI

struct StoryItemView: View {
    var image: String
    var name: String
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(LinearGradient.instaGradient, lineWidth: 2)
                    .frame(width: 64, height: 64)
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 58)
                    .clipShape(Circle())
            }
            
            Text(name)
                .font(.system(size: 12))
                .frame(maxWidth: 64)
        }
    }
}
