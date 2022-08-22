//
//  TriviaView.swift
//  All Topics Trivia
//
//  Created by Clementine on 8/20/22.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20){
                Text("All Topics Trivia").lilacTitle()
                
                Text("Congratulations, you have completed the game 🥳")
                
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    primaryButton(text: "Play again")
                }
                    
            }.foregroundColor(Color("AccentColor")).padding().frame(maxWidth: .infinity,maxHeight: .infinity).background(Color("BackgroundColor"))
        }
        else {
            QuestionView().environmentObject(triviaManager)
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView().environmentObject(TriviaManager())
    }
}
