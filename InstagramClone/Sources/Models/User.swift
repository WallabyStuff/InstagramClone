//
//  User.swift
//  InstagramClone
//
//  Created by 이승기 on 2022/07/31.
//

import Foundation

struct User: Identifiable {
    var id: UUID = UUID()
    var name: String
    var image: String
}
