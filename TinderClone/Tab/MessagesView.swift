//
//  MessagesView.swift
//  TinderClone
//
//  Created by JD on 20/08/20.
//

import SwiftUI

struct MessagesView: View {
    @State private var selected = 0

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Messages")
                    .font(.title2)
                    .bold()
                    .foregroundColor(selected == 0 ? .electricPink : .gray)
                    .onTapGesture {
                        selected = 0
                    }
                Spacer()
                Text("Matches")
                    .font(.title2)
                    .bold()
                    .foregroundColor(selected == 1 ? .electricPink : .gray)
                    .onTapGesture {
                        selected = 1
                    }
                Spacer()
            }
            .padding(.vertical)
            Divider()
            Spacer()
            if selected == 0 {
                MessagesSegmentView()
            } else {
                MatchesSegmentView()
            }
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}

struct MessagesSegmentView: View {
    var body: some View {
        VStack(spacing: 80) {
            Spacer()
            ZStack {
                Rectangle()
                    .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 3)
                    ).foregroundColor(Color.gray.opacity(0.05))
                    .frame(width: 130, height: 200)
                    .offset(y: 20)
                Rectangle()
                    .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.green, lineWidth: 3)
                    ).foregroundColor(Color.green.opacity(0.05))
                    .frame(width: 130, height: 200)
                    .rotationEffect(.degrees(15))
                    .offset(x: 30)
                Text("LIKE")
                    .font(.title)
                    .bold()
                    .foregroundColor(.green)
                    .padding(.horizontal, 8)
                    .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.green, lineWidth: 3)
                        )
                    .offset(x: 30)
            }
            VStack(spacing: 20) {
                Text("Get Swiping")
                    .font(.title3)
                    .bold()
                Text("When you match woth other user they'll appear here, where you can send them a message")
                    .frame(width: 200)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }
}


struct MatchesSegmentView: View {
    var body: some View {
        VStack(spacing: 50) {
            Spacer()
            VStack(spacing: 30) {
                Image(systemName: "camera")
                    .font(.system(size: 60))
                    .foregroundColor(.purple)
                    .rotationEffect(.degrees(20))
                HStack(spacing: 40) {
                    Image(systemName: "music.note.list")
                        .foregroundColor(.blue).opacity(0.7)
                    Image(systemName: "photo")
                        .foregroundColor(.orange)
                        .rotationEffect(.degrees(-20))
                }
                .font(.system(size: 60))
            }
            VStack(spacing: 20) {
                Text("Check back later")
                    .font(.title3)
                    .bold()
                Text("Your matches' activity will appear here")
                    .frame(width: 200)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }
}
