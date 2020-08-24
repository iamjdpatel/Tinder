//
//  ProfileView.swift
//  TinderClone
//
//  Created by JD on 20/08/20.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("img_jd")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 120)
                .cornerRadius(60)
                .shadow(radius: 5)
            VStack(spacing: 5) {
                Text("JD")
                    .font(.system(size: 30))
                    .fontWeight(.heavy)
                Text("iOS Engineer")
                Text("Bengaluru, India")
            }
            ZStack {
                HStack(spacing: 50) {
                    VStack(spacing: 8) {
                        Image(systemName: "gearshape.fill")
                            .font(.system(size: 35, weight: .heavy))
                            .foregroundColor(.gray)
                            .frame(width: 70, height: 70)
                            .modifier(ButtonBG())
                            .cornerRadius(35)
                            .modifier(ThemeShadow())
                        Text("Settings")
                    }
                    Spacer()
                    VStack(spacing: 8) {
                        Image(systemName: "pencil")
                            .font(.system(size: 35, weight: .heavy))
                            .foregroundColor(.gray)
                            .frame(width: 70, height: 70)
                            .modifier(ButtonBG())
                            .cornerRadius(35)
                            .modifier(ThemeShadow())
                        Text("Edit Info")
                    }
                }.padding(.horizontal, 35)
                VStack(spacing: 8) {
                    Image(systemName: "camera.fill")
                        .font(.system(size: 40, weight: .heavy))
                        .foregroundColor(.white)
                        .frame(width: 90, height: 90)
                        .background(Color.electricPink)
                        .cornerRadius(45)
                        .modifier(ThemeShadow())
                    Text("Media")
                }.offset(y: 40)
            }
            .offset(y: -20)
            VStack {
                ProfileCarouselInfo()
                Button(action: {}) {
                    Text("UPGRADE")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.electricPink)
                        .frame(width: 230, height: 60)
                        .modifier(ButtonBG())
                        .cornerRadius(30)
                }
                .modifier(ThemeShadow())
            }
            .padding(.top, 60)
        }
        .padding(.vertical, 30)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .preferredColorScheme(.dark)
    }
}

struct ProfileCarouselInfo: View {
    @State private var selectedTab = 0
    @State var currentDate = Date()
    let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
    let info = CarouselInfo.info
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(0..<info.count) { i in
                VStack(spacing: 12) {
                    HStack(spacing: 16) {
                        Image(systemName: info[i].image)
                            .font(.system(size: 20))
                            .foregroundColor(info[i].color)
                        Text(info[i].title)
                            .font(.title2)
                            .bold()
                    }
                    Text(info[i].info)
                        .fontWeight(.light)
                    Spacer()
                }
                .tag(i)
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: 100)
        .tabViewStyle(PageTabViewStyle())
        .onReceive(timer) { input in
            withAnimation(.easeInOut(duration: 1)) {
                self.selectedTab += 1
                if selectedTab == info.count {
                    selectedTab = 0
                }
            }
        }
    }
}

struct CarouselInfo {
    let id: Int
    let title: String
    let info: String
    let image: String
    let color: Color
    
    static let info = [
        CarouselInfo(id: 0,
                     title: "Get Tinder Gold",
                     info: "See who likes you & more!",
                     image: "flame.fill",
                     color: .gold),
        CarouselInfo(id: 1,
                     title: "Get matches faster",
                     info: "Boost your profile once a month!",
                     image: "bolt.fill",
                     color: .purple),
        CarouselInfo(id: 2,
                     title: "Stand out with Super Likes",
                     info: "You're 3 times more likely to geta match!",
                     image: "star.fill",
                     color: .blue),
        CarouselInfo(id: 3,
                     title: "Swipe around the world",
                     info: "Passport to anywhere with Tinder Plus!",
                     image: "location.fill",
                     color: .blue),
        CarouselInfo(id: 4,
                     title: "Control your profile",
                     info: "Limit what others see with Tinder Plus.",
                     image: "key.fill",
                     color: .orange),
        CarouselInfo(id: 5,
                     title: "I meant to swipe right.",
                     info: "Get unlimited Rewinds with Tinder Plus!",
                     image: "gobackward",
                     color: .gold),
        CarouselInfo(id: 6,
                     title: "Increase your chances",
                     info: "Get unlimited likes with Tinder Plus!",
                     image: "heart.fill",
                     color: Color(UIColor(red: 60/255, green: 229/255, blue: 184/255, alpha: 1)))
    ]
}
