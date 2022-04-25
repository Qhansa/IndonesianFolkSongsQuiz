//
//  QuizModel.swift
//  IndonesianFolkSongsQuiz
//
//  Created by Qhansa D. Bayu on 23/04/22.
//

import Foundation

struct QuizModel {
    let songTitle: String
    let answerOptions: [String]
    let correctAnswerID: Int
    
    // The Quiz Contents
    static let FiveSongs : [QuizModel] = [
        QuizModel(
            songTitle: "Ampar-Ampar Pisang",
            answerOptions: ["North Sumatra", "South Kalimantan", "East Java", "Maluku"],
            correctAnswerID: 1),
        
        QuizModel(
            songTitle: "Anak Kambing Saya",
            answerOptions: ["East Nusa Tenggara", "West Sulawesi", "Bali", "North Sumatra"],
            correctAnswerID: 0),
        
        QuizModel(
            songTitle: "Cing Cangkeling",
            answerOptions: ["East Java", "Central Java", "West Java", "Banten"],
            correctAnswerID: 2),
        
        QuizModel(
            songTitle: "Si Patokaan",
            answerOptions: ["West Nusa Tenggara", "North Sulawesi", "Yogyakarta", "Bengkulu"],
            correctAnswerID: 1),
        
        QuizModel(
            songTitle: "Soleram",
            answerOptions: ["South Sulawesi", "Gorontalo", "North Maluku", "Riau"],
            correctAnswerID: 3),
        
    ]
}
