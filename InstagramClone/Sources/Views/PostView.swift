//
//  PostView.swift
//  InstagramClone
//
//  Created by 이승기 on 2022/07/31.
//

import SwiftUI

struct PostView: View {
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack {
                    Circle()
                        .stroke(LinearGradient.instaGradient, lineWidth: 1.5)
                        .frame(width: 36, height: 36)
                    
                    Image(post.user.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 32)
                        .clipShape(Circle())
                }
                
                VStack(alignment: .leading) {
                    Text(post.user.name)
                        .font(.system(size: 14))
                    Text(post.description)
                        .font(.system(size: 12))
                }
                
                Spacer()
                
                Button(action: {
                    // do something
                }, label: {
                    Text("Follow")
                        .font(.system(size: 12, weight: .medium))
                })
                .frame(height: 32)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .background(.gray.opacity(0.1))
                .cornerRadius(8)
                .padding(.trailing, 12)
                
                Button {
                    // do something
                } label: {
                    Image("option")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                        .foregroundColor(.black)
                }
            }
            .padding(.leading, .DEFAULT_HORIZONTAL_SPACING)
            .padding(.trailing, .DEFAULT_HORIZONTAL_SPACING)
            
            Image(post.image)
                .resizable()
                .scaledToFit()
            
            HStack(spacing: 16) {
                Button {
                    // do something
                } label: {
                    Image("heart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                }
                
                Button {
                    // do something
                } label: {
                    Image("chat_bubble")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                }
                
                Button {
                    // do something
                } label: {
                    Image("send")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                }
                
                Spacer()
                
                Button {
                    // do something
                } label: {
                    Image("bookmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                }
            }
            .padding(.top, 4)
            .padding(.leading, .DEFAULT_HORIZONTAL_SPACING)
            .padding(.trailing, .DEFAULT_HORIZONTAL_SPACING)
            .padding(.bottom, 4)
            
            Text(post.content)
                .font(.system(size: 14))
                .padding(.top, 4)
                .padding(.leading, .DEFAULT_HORIZONTAL_SPACING)
                .padding(.trailing, .DEFAULT_HORIZONTAL_SPACING)
                .padding(.bottom, 4)
        }
    }
}
