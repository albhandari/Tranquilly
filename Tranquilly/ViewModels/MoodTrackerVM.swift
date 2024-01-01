//
//  MoodTrackerVM.swift
//  Tranquilly
//
//  Created by Alex Bhandari on 12/30/23.
//

import Foundation

class MoodTrackerVM: ObservableObject{
    
    @Published var moodScale = 0.0
    @Published var isEditing = false
    @Published var noteField = ""
    @Published var emotion: Emotion?
    @Published var mood: Mood?
    
    init(){
        
    }
    
    //Haven't checked for null and stuff here, just a heads up
    func updateMood(){
        if let em = self.emotion{
            self.mood = Mood(moodScale: Int(self.moodScale), emotion: em, notes: noteField)
        }
        else{
            print("Emotion enum is empty when using updateMood()")
        }
        
    }
    
    
    
}
