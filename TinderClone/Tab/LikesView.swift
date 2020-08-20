//
//  LikesView.swift
//  TinderClone
//
//  Created by JD on 20/08/20.
//

import SwiftUI

struct LikesView: View {
    @State private var selected = 0
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("0 Likes")
                    .font(.title2)
                    .bold()
                    .foregroundColor(selected == 0 ? .gold : .gray)
                    .onTapGesture {
                        selected = 0
                    }
                Spacer()
                Text("10 Top Picks")
                    .font(.title2)
                    .bold()
                    .foregroundColor(selected == 1 ? .gold : .gray)
                    .onTapGesture {
                        selected = 1
                    }
                Spacer()
            }
            .padding(.vertical)
            Divider()
            Spacer()
            if selected == 0 {
                LikesSegmentView()
            } else {
                TopPicksSegmentView()
            }
        }
    }
}

struct LikesView_Previews: PreviewProvider {
    static var previews: some View {
        LikesView()
    }
}

struct LikesSegmentView: View {
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "suit.heart.fill")
                .font(.system(size: 60))
                .foregroundColor(Color.gray.opacity(0.3))
            Text("Upgrade to Gold to see people who already liked you.")
                .frame(width: 230)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
            Spacer()
        }
    }
}


struct TopPicksSegmentView: View {
    private let layout = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        ScrollView {
            Text("Upgrade to Tinder Gold for more Top Picks!")
                .font(.title3)
                .bold()
                .multilineTextAlignment(.center)
                .frame(width: 250)
                .foregroundColor(.gray)
                .padding(8)
            LazyVGrid(columns: layout, spacing: 8) {
                ForEach(0..<29, id: \.self) { _ in
                    Color.random.opacity(0.8)
                        .frame(height: 250)
                        .cornerRadius(15)
                        .shadow(radius: 3)
                }
            }
            .padding(8)
        }
    }
}
