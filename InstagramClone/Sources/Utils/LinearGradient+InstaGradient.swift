//
//  LinearGradient+InstaGradient.swift
//  InstagramClone
//
//  Created by 이승기 on 2022/07/31.
//

import SwiftUI

extension LinearGradient {
    static var instaGradient: LinearGradient {
        return LinearGradient(gradient: .instaGradient,
                              startPoint: .bottomLeading,
                              endPoint: .topTrailing)
    }
}

extension Gradient {
    static var instaGradient: Gradient {
        return Gradient(colors: [Color(hex: "#FFC800"),
                                 Color(hex: "#FF6C00"),
                                 Color(hex: "#FF086F"),
                                 Color(hex: "#E400CA")])
    }
}
