//
//  ContentView.swift
//  ArtunCard
//
//  Created by Deha Peker on 3/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.60, blue: 0.86, opacity: 1.0)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("Artun")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 235, height: 235)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Artun Peker")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                .foregroundColor(.white)
                Text("Health and Fitness")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+1 (917) 680-7353", imageName: "phone.fill")
                InfoView(text: "artun.devin@gmail.com", imageName: "envelope.fill")
            }
        }
       
    }
//    init() {
//        for family in UIFont.familyNames.sorted() {
//            let names = UIFont.fontNames(forFamilyName: family)
//            print("Family: \(family) Font names: \(names)")
//        }
//    }
}

#Preview {
    ContentView()
}
