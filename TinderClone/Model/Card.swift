//
//  Card.swift
//  TinderClone
//
//  Created by JD on 26/08/20.
//

import Foundation

struct Card: Identifiable {
    let id: UUID = UUID()
    let name: String
    let age: Int
    let desc: String
    let image: String
    
    static let cards: [Card] = [
        Card(name: "Dakota Johnson", age: 29, desc: "Love", image: "img_dj"),
        Card(name: "Angelina Jolie", age: 29, desc: "Beauty", image: "img_aj"),
        Card(name: "Brie Larson", age: 22, desc: "Dancer", image: "img_bl"),
        Card(name: "Emma Watson", age: 19, desc: "Moody", image: "img_ew"),
        Card(name: "Gal Gadot", age: 25, desc: "DC", image: "img_gg"),
        Card(name: "Natalie Portman", age: 29, desc: "Thor's", image: "img_np"),
        Card(name: "Selena", age: 23, desc: "Singer", image: "img_sg"),
        Card(name: "Scarlet Johnson", age: 31, desc: "Dog Lover", image: "img_sj"),
        Card(name: "Taylor Swift", age: 29, desc: "Music", image: "img_ts"),
    ]
    
}
