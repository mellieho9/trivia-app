//
//  ContentView.swift
//  All Topics Trivia
//
//  Created by Clementine on 8/20/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    var body: some View {
        NavigationView {
            VStack(spacing: 40){
                VStack(spacing: 20){
                    Text("All Topics Trivia").lilacTitle()
                    Text("Are you ready to test out your trivia knowledge?").foregroundColor(Color("AccentColor")).multilineTextAlignment(.center)
                    NavigationLink {
                        TriviaView().environmentObject(triviaManager)
                    } label: {
                        primaryButton(text: "Let's go!")
                    }
                }
            }.frame( maxWidth: .infinity,  maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color("BackgroundColor"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
