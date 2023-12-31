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
    var notes: String
    
    init(moodScale: Int, emotion: Emotion, notes: String) {
        self.moodScale = moodScale
        self.emotion = emotion
        self.notes = notes
    }
}

enum Emotion: String, Codable, CaseIterable{
    case anrgy = "Angry"
    case happy = "Happy"
    case sad = "Sad"
    case tired = "Tired"
    case axnious = "Anxious"
}

