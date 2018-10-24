//
//  Question.swift
//  Quizzler
//
//  Created by Akhilesh Gupta on 08/10/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question{
    
    let questionText : String
    let answer : Bool
    
    init(text : String , correctAnswer : Bool){
        questionText = text
        answer = correctAnswer
    }
}
