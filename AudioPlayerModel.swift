//
//  AudioPlayerModel.swift
//  IndonesianFolkSongsQuiz
//
//  Created by Qhansa D. Bayu on 25/04/22.
//

import Foundation
import AVFoundation

struct AudioPlayerModel {
    
    // The name of the audio file
    let musicAudio: String?
    
    // Variable for Playing The Audio
    var player: AVAudioPlayer?
    
    mutating func playAudio(musicAudio: String){
        // Play the Audio File
        if let player = player, player.isPlaying {
            // Stop playback
            player.stop()

        } else {
            // Set up the Audio
            let urlString = Bundle.main.path(forResource: "\(musicAudio)", ofType: "m4a")

            // Play the audio
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)

                guard let urlString = urlString else {
                    return
                }

                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))

                guard let player = player else {
                    return
                }
                player.play()
                player.setVolume(5.0, fadeDuration: 0.5)

            } catch {
                print("Something went wrong")
            }
        }
    }
}
