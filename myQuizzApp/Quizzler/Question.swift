//
//  Question.swift
//  Quizzler
//
//  Created by Sight Syndicate on 2/22/18.
//

import Foundation


class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
