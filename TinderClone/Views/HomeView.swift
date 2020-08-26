//
//  HomeView.swift
//  TinderClone
//
//  Created by JD on 20/08/20.
//

import SwiftUI

struct HomeView: View {
    private let buttons = ActionButton.buttons
    private let cards: [Card] = Card.cards
    
    var body: some View {
        VStack {
            ZStack {
                ForEach(cards, id: \.id) { card in
                    CardView(card: card)
                        .shadow(radius: 5)
                }
            }
            
            Spacer()
            HStack {
                Spacer()
                ForEach(buttons, id: \.id) { button in
                    Button(action: {
                        
                    }) {
                        Image(systemName: button.image)
                            .font(.system(size: 23, weight: .heavy))
                            .foregroundColor(button.color)
                            .frame(width: button.height, height: button.height)
                            .modifier(ButtonBG())
                            .cornerRadius(button.height/2)
                            .modifier(ThemeShadow())
                    }
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
