//
//  LoadingView.swift
//  TinderClone
//
//  Created by JD on 25/08/20.
//

import SwiftUI

struct LoadingView: View {
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color.red.opacity(0.3))
                .frame(width: 100, height: 100)
                .scaleEffect(animationAmount)
                .opacity(Double(3 - animationAmount))

            Image("img_jd")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .cornerRadius(50)
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 3)
                )
        }
        .animation(
            Animation.easeOut(duration: 3)
                .repeatForever(autoreverses: false)
        )
            .onAppear {
                self.animationAmount = 3
            }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
            .preferredColorScheme(.dark)
    }
}
