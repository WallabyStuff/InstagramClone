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
                    .frame(width: 40)
                    .clipShape(Circle())
                    .foregroundColor(.white)
                
                Image("add_circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20)
                    .foregroundColor(.blue)
                    .position(x: 54, y: 54)
                    .overlay(
                        Circle().stroke(lineWidth: 4)
                            .frame(width: 20, height: 20)
                            .position(x: 54, y: 54)
                            .foregroundColor(Color(uiColor: .systemBackground))
                    )
            }
            .frame(width: 64, height: 64)
            
            Text("Your Story")
                .font(.system(size: 12))
                .frame(maxWidth: 64)
        }
    }
}
