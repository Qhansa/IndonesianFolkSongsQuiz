//
//  QuizView.swift
//  IndonesianFolkSongsQuiz
//
//  Created by Qhansa D. Bayu on 23/04/22.
//

import SwiftUI

struct QuizView: View {
    let quizList: QuizModel
    
    // For Checking
    @State var currentQuestion: Int = 0
    @State private var chosenAnswerID: Int? = nil
    
    // Quiz Scores
    @State var scoreRight = 0
    @State var scoreWrong = 0
    
    var body: some View {
        
        // START THE QUIZ
        if self.currentQuestion < QuizModel.TenSongs.count {
            ZStack {
                Color("IFSQ Yellow Color")
                    .ignoresSafeArea()
                    .opacity(0.2)
                
                VStack(alignment: .center, spacing: 20) {
                    Spacer()
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100.0, height: 100.0)
                        .multilineTextAlignment(.center)
                    
                    Text("Guess this Indonesian Folk Song's Origin")
                        .font(.title)
                        .foregroundColor(Color("IFSQ Red Color"))
                        .fontWeight(.medium)
                        .padding()
                    
                    Text(QuizModel.TenSongs[currentQuestion].songTitle)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                        .padding()
                        .padding()
                        .padding()
                        .padding()
                        .border(.gray, width: 2)
                        .background(.white)
                    
                    Text("is originally from")
                        .font(.title2)
                        .foregroundColor(Color("IFSQ Black Color"))
                        .fontWeight(.medium)
                        .padding()
                        .padding()
                    
                    
                    // THE ANSWER OPTIONS
                    VStack {
                        Button(action: {
                            print("You chose \(QuizModel.TenSongs[currentQuestion].answerOptions[0])")
                            chosenAnswerID = 0
                            self.afterAnswering(buttonID: 0)
                        }, label: {
                            Text(QuizModel.TenSongs[currentQuestion].answerOptions[0])
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(Color("IFSQ Black Color"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        })
                        .padding()
                        .border(Color("IFSQ Yellow Color"), width: 4)
//                        .background(chosenButtonColor(buttonID: 0))
//                        .disabled(chosenAnswerID != nil)
                        
                        Button(action: {
                            print("You chose \(QuizModel.TenSongs[currentQuestion].answerOptions[1])")
                            chosenAnswerID = 1
                            self.afterAnswering(buttonID: 1)
                        }, label: {
                            Text(QuizModel.TenSongs[currentQuestion].answerOptions[1])
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(Color("IFSQ Black Color"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        })
                        .padding()
                        .border(Color("IFSQ Yellow Color"), width: 4)
//                        .background(chosenButtonColor(buttonID: 1))
//                        .disabled(chosenAnswerID != nil)
                        
                        Button(action: {
                            print("You chose \(QuizModel.TenSongs[currentQuestion].answerOptions[2])")
                            chosenAnswerID = 2
                            self.afterAnswering(buttonID: 2)
                        }, label: {
                            Text(QuizModel.TenSongs[currentQuestion].answerOptions[2])
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(Color("IFSQ Black Color"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        })
                        .padding()
                        .border(Color("IFSQ Yellow Color"), width: 4)
//                        .background(chosenButtonColor(buttonID: 2))
//                        .disabled(chosenAnswerID != nil)
                        
                        Button(action: {
                            print("You chose \(QuizModel.TenSongs[currentQuestion].answerOptions[3])")
                            chosenAnswerID = 3
                            self.afterAnswering(buttonID: 3)
                        }, label: {
                            Text(QuizModel.TenSongs[currentQuestion].answerOptions[3])
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(Color("IFSQ Black Color"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        })
                        .padding()
                        .border(Color("IFSQ Yellow Color"), width: 4)
//                        .background(chosenButtonColor(buttonID: 3))
//                        .disabled(chosenAnswerID != nil)
                    }
                    .padding(.horizontal)
                    .padding(.horizontal)
                    .padding(.horizontal)
                    .padding(.horizontal)
                    .padding(.horizontal)
                    .padding(.horizontal)
                    .padding(.horizontal)
                    .padding(.horizontal)
                    
                    
                    Spacer()
                }
            }
        } else {
            EndView(finalScoreRight: scoreRight, finalScoreWrong: scoreWrong)
        }
    }
    
    // Creating a Function to Change the chosenAnswer Color (NOT USED)
    func chosenButtonColor(buttonID: Int) -> Color {
        // If the user hasn't chosen the answer
        guard let chosenAnswerID = chosenAnswerID else {
            return .clear
        }
        
        // If the user has chosen the answer
        if chosenAnswerID == quizList.correctAnswerID {
            return .green
        } else {
            return .red
        }
    }
    
    // After Answering, Calculate the Score and Go to the Next Question
    func afterAnswering(buttonID: Int) {
        print("currentQuestion : \(currentQuestion + 1)")
        
        // CALCULATE THE SCORE
        if QuizModel.TenSongs[currentQuestion].correctAnswerID == buttonID {
            scoreRight += 1
        } else {
            scoreWrong += 1
        }
        print("Right : \(scoreRight)")
        print("Wrong : \(scoreWrong)")
        
        // GO TO THE NEXT QUESTIONS
        currentQuestion += 1
    }
    
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(quizList: QuizModel.TenSongs[0])
    }
}
