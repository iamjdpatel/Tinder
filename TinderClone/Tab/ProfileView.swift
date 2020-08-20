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
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 120, height: 120)
            VStack(spacing: 5) {
                Text("JD Patel")
                    .font(.system(size: 30))
                    .fontWeight(.heavy)
                Text("iOS Engineer")
                Text("Bengaluru")
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
            Spacer()
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
        .padding(.vertical, 30)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
