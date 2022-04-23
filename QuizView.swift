//
//  QuizView.swift
//  IndonesianFolkSongsQuiz
//
//  Created by Qhansa D. Bayu on 23/04/22.
//

import SwiftUI

struct QuizView: View {
    let quizList: QuizModel
    
    var body: some View {
        ZStack {
            Color("IFSQ Yellow Color")
                .ignoresSafeArea()
                .opacity(0.2)
            
            VStack {
                Spacer()
                Text("Guess this Indonesian Folk Song's Origin")
                    .font(.title)
                    .foregroundColor(Color("IFSQ Red Color"))
                    .fontWeight(.medium)
                    .padding()
                
                Text(quizList.songTitle)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .padding()
                    .padding()
                    .padding()
                    .padding()
                    .border(.gray, width: 2)
                
                Text("is originally from")
                    .font(.title2)
                    .foregroundColor(Color("IFSQ Black Color"))
                    .fontWeight(.medium)
                    .padding()
                    .padding()
                
                VStack {
                    Button(action: {
                        print("Button 1 Clicked")
                    }, label: {
                        Text(quizList.answerOptions[0])
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color("IFSQ Black Color"))
                    })
                    .padding()
                    .border(Color("IFSQ Yellow Color"), width: 4)
                    
                    Button(action: {
                        print("Button 2 Clicked")
                    }, label: {
                        Text(quizList.answerOptions[1])
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color("IFSQ Black Color"))
                    })
                    .padding()
                    .border(Color("IFSQ Yellow Color"), width: 4)
                    
                    Button(action: {
                        print("Button 3 Clicked")
                    }, label: {
                        Text(quizList.answerOptions[2])
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color("IFSQ Black Color"))
                    })
                    .padding()
                    .border(Color("IFSQ Yellow Color"), width: 4)
                    
                    Button(action: {
                        print("Button 4 Clicked")
                    }, label: {
                        Text(quizList.answerOptions[3])
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color("IFSQ Black Color"))
                    })
                    .padding()
                    .border(Color("IFSQ Yellow Color"), width: 4)
                }
                Spacer()
            }
        }
    }
}

//struct QuizView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuizView()
//    }
//}
