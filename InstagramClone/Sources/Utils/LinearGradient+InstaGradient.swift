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
        return Gradient(colors: [Color(hex: "#FFD100"),
                                 Color(hex: "#FFD100"),
                                 Color(hex: "#FF8000"),
                                 Color(hex: "#FF1122"),
                                 Color(hex: "#FF005F"),
                                 Color(hex: "#E700CD"),
                                 Color(hex: "#E700CD")])
    }
}
