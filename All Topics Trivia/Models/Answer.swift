//
//  Answer.swift
//  All Topics Trivia
//
//  Created by Clementine on 8/20/22.
//

import Foundation

struct Answer: Identifiable{
    var id = UUID()
    var text:AttributedString
    var isCorrect:Bool
}
