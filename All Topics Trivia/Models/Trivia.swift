//
//  Trivia.swift
//  All Topics Trivia
//
//  Created by Clementine on 8/20/22.
//

import Foundation


struct Trivia: Decodable {
    var results: [Result]
    struct Result: Decodable, Identifiable {
        var id:UUID{
            UUID()
        }
        var category: String
        var type: String
        var difficulty: String
        var question: String
        var correctAnswer: String
        var incorrectAnswers: [String]
        
        var formattedQuestion: AttributedString {
            do {
                try 
            } catch {
                print("Error setting formattedQuestion: \(error)")
            }
        }
    }
}
