//
//  CustomModifiers.swift
//  TinderClone
//
//  Created by JD on 21/08/20.
//

import SwiftUI

struct ButtonBG: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color(UIColor(named: "themeButtonBG") ?? UIColor.secondarySystemBackground))
    }
}

struct ThemeShadow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color(UIColor.black).opacity(0.1), radius: 8)
    }
}

struct RoundedRectangleAroundText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.green)
            .padding(.horizontal, 8)
            .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.green, lineWidth: 3)
                )
            .offset(x: 30)
    }
}
