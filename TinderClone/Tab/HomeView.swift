//
//  HomeView.swift
//  TinderClone
//
//  Created by JD on 20/08/20.
//

import SwiftUI

struct HomeView: View {
    private let buttons = ActionButton.buttons
    
    var body: some View {
        VStack {
            ZStack {
                Color.random.opacity(0.5)
                    .cornerRadius(15)
                    .modifier(ThemeShadow())
                VStack(spacing: 10) {
                    Spacer()
                    HStack(alignment: .bottom) {
                        VStack(spacing: 5) {
                            Text("JD Patel")
                                .font(.system(size: 30))
                                .fontWeight(.heavy)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Recently active")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Developer")
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        Image(systemName: "info.circle.fill")
                            .font(.system(size: 30))
                            .padding(8)
                    }
                }
                .foregroundColor(.white)
                .padding()
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color(UIColor.black).opacity(0.5), .clear]),
                                       startPoint: .bottom,
                                       endPoint: .center))
            .cornerRadius(15)
            .padding()
            
            Spacer()
            HStack {
                Spacer()
                ForEach(buttons, id: \.id) { button in
                    Image(systemName: button.image)
                        .font(.system(size: 23, weight: .heavy))
                        .foregroundColor(button.color)
                        .frame(width: button.height, height: button.height)
                        .modifier(ButtonBG())
                        .cornerRadius(button.height/2)
                        .modifier(ThemeShadow())
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 5)
        }
        .background(Color(UIColor.systemGroupedBackground).edgesIgnoringSafeArea(.all))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
//            .preferredColorScheme(.dark)
    }
}

struct ActionButton {
    let id: Int
    let image: String
    let color: Color
    let height: CGFloat
    
    static let buttons = [
        ActionButton(id: 0,
                     image: "arrow.counterclockwise",
                     color: Color(UIColor(red: 247/255, green: 181/255, blue: 50/255, alpha: 1)),
                     height: 47),
        ActionButton(id: 1,
                     image: "xmark",
                     color: Color(UIColor(red: 250/255, green: 73/255, blue: 95/255, alpha: 1)),
                     height: 55),
        ActionButton(id: 2,
                     image: "star.fill",
                     color: Color(UIColor(red: 38/255, green: 172/255, blue: 250/255, alpha: 1)),
                     height: 47),
        ActionButton(id: 3,
                     image: "suit.heart.fill",
                     color: Color(UIColor(red: 60/255, green: 229/255, blue: 184/255, alpha: 1)),
                     height: 55),
        ActionButton(id: 4,
                     image: "bolt.fill",
                     color: .purple,
                     height: 47)
    ]
}
