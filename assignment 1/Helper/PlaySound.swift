//
//  PlaySound.swift
//  CSGO Maps
//
//  Created by William on 29/07/2022.
// https://www.youtube.com/watch?v=6l5nJgrXTfc

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type:String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch {
            print("ERROR: Could not find and play the sound file!")
        }
    }
}
