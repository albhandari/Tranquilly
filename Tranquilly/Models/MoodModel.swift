//
//  MoodModel.swift
//  Tranquilly
//
//  Created by Alex Bhandari on 12/30/23.
//

import Foundation

struct Mood: Codable{
    var moodScale: Int //Scale from 1 to 10
    var emotion: Emotion //Emotion Type
    
    init(moodScale: Int, emotion: Emotion) {
        self.moodScale = moodScale
        self.emotion = emotion
    }
}

enum Emotion: String, Codable, CaseIterable{
    case anrgy = "Angry"
    case happy = "Happy"
    case sad = "Sad"
    case tired = "Tired"
    case axnious = "Anxious"
}
