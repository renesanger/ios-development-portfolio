//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Rene Sanger on 5/23/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question
{
    let text : String
    let answer : [String ]
    let correctAnswer : String
    
    init(q:String,a:[String ], correctAnswer:String){
        text = q
        answer = a
        self.correctAnswer = correctAnswer
    }
}
