//
//  QuizModel.swift
//  IndonesianFolkSongsQuiz
//
//  Created by Qhansa D. Bayu on 23/04/22.
//

import Foundation

struct QuizModel {
    var songTitle: String
    var correctAnswer: String
    var answerOptions: [ProvinceOptions]
}

struct ProvinceOptions {
    var id: Int
    
}
