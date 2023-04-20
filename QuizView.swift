//
//  QuizView.swift
//  IndonesianFolkSongsQuiz
//
//  Created by Qhansa D. Bayu on 23/04/22.
//

import SwiftUI
import AVFoundation

struct QuizView: View {
    // For Checking
    @State var currentQuestion: Int = 0
    @State private var chosenAnswerID: Int? = nil
    
    // Quiz Scores
    @State var scoreRight = 0
    @State var scoreWrong = 0
    
    // For Playing the Audio
    @State var AudioPlayer = AudioPlayerModel(musicAudio: "")
    
    var body: some View {
        
        // START THE QUIZ
        if self.currentQuestion < QuizModel.FiveSongs.count {
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
                        .fontWeight(.medium)
                        .padding()
                    
                    // THE SONG TITLE (QUESTION)
                    Text(QuizModel.FiveSongs[currentQuestion].songTitle)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal, 80)
                        .padding(.vertical, 50)
                        .foregroundColor(.black)
                        .background(.white)
                        .cornerRadius(100)
                    
                    Button(action: {
                        AudioPlayer.playAudio(musicAudio: QuizModel.FiveSongs[currentQuestion].songTitle)
                    }, label: {
                        Image(systemName: "speaker.wave.2")
                            .foregroundColor(.red)
                            .scaledToFit()
                            .multilineTextAlignment(.center)
                            .font(.body.bold())
                            .imageScale(.medium)
                            .foregroundColor(.white)
                            .padding(10)
                            .background(.white)
                            .clipShape(Circle())
                            .shadow(radius: 10.0)
                    })
                    
                    Text("is originally from")
                        .font(.title2)
                        .fontWeight(.medium)
                        .padding(.bottom, 5)
                    
                    // THE ANSWER OPTIONS
                    VStack {
                        Button(action: {
                            chosenAnswerID = 0
                            self.afterAnswering(buttonID: 0)
                            AudioPlayer.player?.stop()
                        }, label: {
                            Text(QuizModel.FiveSongs[currentQuestion].answerOptions[0])
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(Color("IFSQ Black Color"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        })
                        .padding()
                        .border(Color("IFSQ Yellow Color").opacity(0.5), width: 4)
                        .background(Color("IFSQ Yellow Color").opacity(0.75))
                        .cornerRadius(10)
                        
                        Button(action: {
                            chosenAnswerID = 1
                            self.afterAnswering(buttonID: 1)
                            AudioPlayer.player?.stop()
                        }, label: {
                            Text(QuizModel.FiveSongs[currentQuestion].answerOptions[1])
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(Color("IFSQ Black Color"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        })
                        .padding()
                        .border(Color("IFSQ Yellow Color").opacity(0.5), width: 4)
                        .background(Color("IFSQ Yellow Color").opacity(0.75))
                        .cornerRadius(10)
                        
                        Button(action: {
                            chosenAnswerID = 2
                            self.afterAnswering(buttonID: 2)
                            AudioPlayer.player?.stop()
                        }, label: {
                            Text(QuizModel.FiveSongs[currentQuestion].answerOptions[2])
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(Color("IFSQ Black Color"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        })
                        .padding()
                        .border(Color("IFSQ Yellow Color").opacity(0.5), width: 4)
                        .background(Color("IFSQ Yellow Color").opacity(0.75))
                        .cornerRadius(10)
                        
                        Button(action: {
                            chosenAnswerID = 3
                            self.afterAnswering(buttonID: 3)
                            AudioPlayer.player?.stop()
                        }, label: {
                            Text(QuizModel.FiveSongs[currentQuestion].answerOptions[3])
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(Color("IFSQ Black Color"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        })
                        .padding()
                        .border(Color("IFSQ Yellow Color").opacity(0.5), width: 4)
                        .background(Color("IFSQ Yellow Color").opacity(0.75))
                        .cornerRadius(10)
                    }
                    .padding(.horizontal, 100)
                    
                    Spacer()
                    Spacer()
                }
            }
        } else {
            EndView(finalScoreRight: scoreRight, finalScoreWrong: scoreWrong)
        }
    }
    
    // After Answering, Calculate the Score and Go to the Next Question
    func afterAnswering(buttonID: Int) {
        // CALCULATE THE SCORE
        if QuizModel.FiveSongs[currentQuestion].correctAnswerID == buttonID {
            scoreRight += 1
        } else {
            scoreWrong += 1
        }
        
        // GO TO THE NEXT QUESTIONS
        currentQuestion += 1
    }
    
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView().preferredColorScheme(.light)
    }
}
