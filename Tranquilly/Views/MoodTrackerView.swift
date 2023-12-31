//
//  MoodTrackerView.swift
//  Tranquilly
//
//  Created by Alex Bhandari on 12/30/23.
//

import SwiftUI

struct MoodTrackerView: View {
    
    @State private var speed = 0.0
    @State private var isEditing = false
    @State private var textField = ""
    
    var body: some View {
        Text("How do you feel today")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .bold()
        
        Slider(
            value: $speed,
            in: 0...10) { editing in
                isEditing = editing
            }
            .padding()
        Text(String(isEditing) + " \(speed)")
        
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
        
        Text("How do you feel today")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .bold()
        TextField("Enter stuff here", text: $textField)
            .padding()
        Spacer()
    }
}

#Preview {
    MoodTrackerView()
}
