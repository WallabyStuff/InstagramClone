//
//  AddStoryItemView.swift
//  InstagramClone
//
//  Created by 이승기 on 2022/07/31.
//

import SwiftUI

struct AddStoryItemView: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .foregroundColor(.gray.opacity(0.3))
                
                Image("user_circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 48)
                    .clipShape(Circle())
                    .foregroundColor(.white)
                
                Image("add_circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24)
                    .foregroundColor(.blue)
                    .position(x: 65, y: 65)
                    .overlay(
                        Circle().stroke(lineWidth: 4)
                            .frame(width: 24, height: 24)
                            .position(x: 65, y: 65)
                            .foregroundColor(Color(uiColor: .systemBackground))
                    )
            }
            .frame(width: 74, height: 74)
            
            Text("Your Story")
                .font(.system(size: 12))
                .frame(maxWidth: 74)
        }
    }
}
