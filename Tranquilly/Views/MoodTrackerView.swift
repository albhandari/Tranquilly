//
//  MoodTrackerView.swift
//  Tranquilly
//
//  Created by Alex Bhandari on 12/30/23.
//

import SwiftUI

struct MoodTrackerView: View {
    
    @StateObject private var moodTrackerVM = MoodTrackerVM()
    
    @State private var moodScale = 0.0
    @State private var isEditing = false
    @State private var noteField = ""
    
    var body: some View {
        Text("How do you feel today")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .bold()
        
        Slider(
            value: $moodTrackerVM.moodScale,
            in: 0...10, step: 1) { editing in
                moodTrackerVM.isEditing = editing
            }
            .padding()
        Text(String(moodTrackerVM.isEditing) + " \(moodTrackerVM.moodScale)")
        
        VStack{
            Text("What Emotion Did You Feel Today")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .bold()
            
            List(Emotion.allCases) { emotion in
                Text(emotion.rawValue).onTapGesture {
                    moodTrackerVM.emotion = Emotion(rawValue: emotion.rawValue)
                }
                
            }.frame(maxHeight: 300)
            
        }
        if let testing = moodTrackerVM.emotion{
            Text("Emotion elected: \(testing.rawValue)")
        }
        
        Text("Any Extra Notes?")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .bold()
        TextField("Enter stuff here", text: $moodTrackerVM.noteField)
            .padding()
        
        Button("Save") {
            print("Button tapped!")
            
            //if moodScale, emotion, and extra not exists, then update the mood,
            //if not then we can have a view that shows up saying fill stuff out
        }
        
        Spacer()
        
        
    }
    
    
}

#Preview {
    MoodTrackerView()
}
