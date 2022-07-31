//
//  StoryView.swift
//  InstagramClone
//
//  Created by 이승기 on 2022/07/31.
//

import SwiftUI

struct StoryView: View {
    let users: [User]
    
    var body: some View {
        LazyHStack(spacing: 16) {
            AddStoryItemView()
            
            ForEach(users, id: \.id) { user in
                StoryItemView(image: user.image, name: user.name)
            }
        }
        .padding(.DEFAULT_HORIZONTAL_SPACING)
    }
}
