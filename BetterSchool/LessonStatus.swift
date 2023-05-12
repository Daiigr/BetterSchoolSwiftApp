//
//  LessonStatus.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 5/7/23.
//

import SwiftUI

struct LessonStatus: View{
    var body: some View {
        SummativeAssesmentIcon()
        FormativeAssesmentIcon()
        ContentLessonIcon()
    }
}

struct SummativeAssesmentIcon: View{
    var body: some View{
        
        Button {
            
        } label: {
            Text("Summative Assesment")
                .font(.body)
                .bold()
                .padding(.vertical,2)
                .padding(.horizontal)
                .overlay(Capsule().stroke(lineWidth: 1))
                .foregroundColor(.red)
        }
    }
}

struct FormativeAssesmentIcon: View{
    var body: some View{
        Text("Formative Assesment")
            .font(.body)
            .bold()
            .padding(.vertical,2)
            .padding(.horizontal)
            .overlay(Capsule().stroke(lineWidth: 1))
            .foregroundColor(.purple)
    }
}

struct ContentLessonIcon: View{
    var body: some View{
        Text("Content Lesson")
            .font(.body)
            .bold()
            .padding(.vertical,2)
            .padding(.horizontal)
            .overlay(Capsule()
                .stroke(lineWidth: 1))
                .foregroundColor(.blue)
    }
}

struct LessonStatus_Previews: PreviewProvider {
    static var previews: some View {
       LessonStatus()
    }
}
