//
//  SummativeEventView.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 5/9/23.
//

import SwiftUI

struct SummativeEventView: View {
    let theclass: Class
    let EventName: String
    let EventType: String
    var body: some View {
        
        VStack(alignment: .leading){
            
            HStack{
                Text(theclass.ClassName)
                    .font(.caption)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    .opacity(0.96)
                    .overlay(Capsule().stroke().foregroundColor(theclass.ClassColor))
                
                
                Text(EventType)
                    .font(.caption)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    .overlay(Capsule().stroke())
                    .foregroundColor(.red)
                
               Text(EventName)
                
            }.padding(.horizontal,1).frame(width: .infinity,alignment: .trailing)
        
            Text("In two days · 11/05/2023 at 11:59 PM").font(.caption)
                .foregroundColor(.gray)
                .padding(.horizontal,15)
                .frame(width: .infinity,alignment: .trailing)

            
    
        }
        
    }
    }

struct SummativeEventView_Previews: PreviewProvider {
    static var previews: some View {
        SummativeEventView(theclass: ExampleClassArray[1],EventName: "Ecology Paper", EventType: "Summative")
    }
}
