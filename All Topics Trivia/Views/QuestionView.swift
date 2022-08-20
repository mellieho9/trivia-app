//
//  QuestionView.swift
//  All Topics Trivia
//
//  Created by Clementine on 8/20/22.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 40){
            HStack {
                Text("All Topics Trivia").lilacTitle()
                Spacer()
                Text("1 out of 10").foregroundColor(Color("AccentColor")).fontWeight(.heavy)
            }
            ProgressBar(progress: 40)
            
            VStack(alignment: .leading, spacing: 20){
                Text("What is the elemental symbol for mercury?").font(.system(size: 20)).bold().foregroundColor(.gray)
                answerRow(answer: Answer(text: "false", isCorrect: true))
                answerRow(answer: Answer(text: "true", isCorrect: true))
            }
            
            primaryButton(text: "Next")
            
            Spacer()
        }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(Color("BackgroundColor")).navigationBarHidden(true)
        
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
