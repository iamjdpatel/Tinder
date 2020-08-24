//
//  CardView.swift
//  TinderClone
//
//  Created by JD on 21/08/20.
//

import SwiftUI

struct CardView: View {
    var i: Int
    @State private var translation: CGSize = .zero

    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("img_tinder\(i)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width - 32)
                    .clipped()
                    .cornerRadius(15)
                    .modifier(ThemeShadow())
                CardInfoView()
                VStack {
                    HStack {
                        Text("LIKE")
                            .tracking(3)
                            .font(.title)
                            .padding(.horizontal)
                            .foregroundColor(.green)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.green, lineWidth: 3)
                            )
                            .rotationEffect(.degrees(-20))
                        Spacer()
                        Text("NOPE")
                            .tracking(3)
                            .font(.title)
                            .padding(.horizontal)
                            .foregroundColor(.red)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.red, lineWidth: 3)
                            )
                            .rotationEffect(.degrees(20))
                    }.padding(.horizontal, 25)
                    Spacer()
                }
                .padding(.top, 40)
                .padding(.bottom, 150)
            }
            .offset(x: self.translation.width, y: 0)
            .rotationEffect(.degrees(Double(self.translation.width / geo.size.width) * 25), anchor: .bottom)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        self.translation = value.translation
                    }.onEnded { value in
                        self.translation = .zero
                    }
            )
            .cornerRadius(15)
            .padding()
        }
    }
}


struct CardInfoView: View {
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            HStack(alignment: .bottom) {
                VStack(spacing: 5) {
                    Text("Ketty, 29")
                        .font(.system(size: 30))
                        .fontWeight(.heavy)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Recently active")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Fashion Blogger")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Image(systemName: "info.circle.fill")
                    .font(.system(size: 30))
                    .padding(8)
            }
        }
        .foregroundColor(.white)
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [Color(UIColor.black).opacity(0.3), .clear]),
                                    startPoint: .bottom,
                                    endPoint: .center))
        .cornerRadius(15)
        .clipped()
    }
}



struct CardInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CardInfoView()
    }
}
