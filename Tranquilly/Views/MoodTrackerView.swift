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
            
            List {
                ForEach((1...3), id: \.self) {
                    Text("Item \($0)")
                }
                
            }.frame(maxHeight: 200)
            
        }
        
        Text("Any Extra Notes?")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .bold()
        TextField("Enter stuff here", text: $moodTrackerVM.noteField)
            .padding()
        Spacer()
    }
}

#Preview {
    MoodTrackerView()
}
