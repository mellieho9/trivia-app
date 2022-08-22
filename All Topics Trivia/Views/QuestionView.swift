//
//  QuestionView.swift
//  All Topics Trivia
//
//  Created by Clementine on 8/20/22.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        VStack(spacing: 40){
            HStack {
                Text("All Topics Trivia").lilacTitle()
                Spacer()
                Text("\(triviaManager.index + 1) out of \(triviaManager.length)").foregroundColor(Color("AccentColor")).fontWeight(.heavy)
            }
            ProgressBar(progress: triviaManager.progress)
            
            VStack(alignment: .leading, spacing: 20){
                Text(triviaManager.question).font(.system(size: 20)).bold().foregroundColor(.gray)
                
                ForEach(triviaManager.answerChoices, id: \.id){
                    answer in answerRow(answer: answer).environmentObject(triviaManager)
                }
            }
            Button {
                triviaManager.goToNextQuestion()
            } label: {
                primaryButton(text: "Next", background: triviaManager.answerSelected ? Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
            }.disabled(!triviaManager.answerSelected)
            
            Spacer()
        }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(Color("BackgroundColor")).navigationBarHidden(true)
        
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
