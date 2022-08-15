//
//  Post.swift
//  InstagramClone
//
//  Created by 이승기 on 2022/07/31.
//

import Foundation

struct Post: Identifiable {
    var id: UUID = UUID()
    var user: User
    var description: String
    var images: [String]
    var content: String
}
