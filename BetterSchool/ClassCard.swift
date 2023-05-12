//
//  ClassCard.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 5/7/23.
//

import SwiftUI

struct ClassCard: View {
    let theclass: Class
    var body: some View {
        

            LazyVStack{
                HStack{
                    Text(theclass.CurriculumType)
                        .bold()
                        .font(.title2)
                    Text(theclass.ClassName)
                    Image(systemName: theclass.ClassIcon)
                }
                Text("8:00 AM - 9:20 AM")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                            
                SummativeAssesmentIcon()

            }
            
            
                
        
    }
}
struct ClassCard_Previews: PreviewProvider {
    static var previews: some View {
        ClassCard(theclass: ExampleClassArray[2]).previewLayout(.sizeThatFits)
    }
}
