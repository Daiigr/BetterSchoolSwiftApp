//
//  SummativeListView.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 5/9/23.
//

import SwiftUI
struct SummativeListView: View {
    let theclass: Array<Class>
    var body: some View {
        
        ScrollView(.vertical){
            SummativeEventView(theclass: ExampleClassArray[1],EventName: "Ecology Paper", EventType: "Summative")
            SummativeEventView(theclass: ExampleClassArray[2],EventName: "Integration Exam", EventType: "Summative")
            SummativeEventView(theclass: ExampleClassArray[1],EventName: "Town Council Presentation", EventType: "Summative")
            SummativeEventView(theclass: ExampleClassArray[2],EventName: "Differentiation Exam", EventType: "Summative")
            SummativeEventView(theclass: ExampleClassArray[3],EventName: "Ecology Paper", EventType: "Summative")
            SummativeEventView(theclass: ExampleClassArray[1],EventName: "Ecology Paper", EventType: "Summative")
            SummativeEventView(theclass: ExampleClassArray[2],EventName: "Ecology Paper", EventType: "Summative")
            SummativeEventView(theclass: ExampleClassArray[1],EventName: "Ecology Paper", EventType: "Summative")
        }
        
    }
}
struct SummativeListView_Previews: PreviewProvider {
    static var previews: some View {
        SummativeListView(theclass: ExampleClassArray)
    }
}
