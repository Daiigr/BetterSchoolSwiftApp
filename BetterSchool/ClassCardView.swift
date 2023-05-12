//
//  ClassCardView.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 5/10/23.
//

import SwiftUI

struct ClassCardView: View {
    @Namespace var namespace
    @State var show = false
    let theclass: Class
    
    var body: some View {
        ZStack{
            if !show{
                VStack(alignment: .leading, spacing: 12){
                    Text("AP Calculus AB")
                        .shadow(color: .white , radius: 20, x: 0, y:0)
                        .font(.largeTitle).bold()
                        .matchedGeometryEffect(id: "ClassTitle", in: namespace)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack{
                        Text("Grade")
                        Text("-A").bold()
                        Image(systemName: "chevron.up.circle")
                    }
                    .shadow(color: .white , radius: 20, x: 0, y:0)
                    .matchedGeometryEffect(id: "GradeInformation", in: namespace)
                    
                    Text("Taught by Quintin Painter")
                        .shadow(color: .white , radius: 20, x: 0, y:0)
                        .matchedGeometryEffect(id: "ClassTeacher", in: namespace)

                }
                .padding(20)
                .background(
                    
                    
                    Image("HeaderImage")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .blur(radius: 10)
                        
                        .matchedGeometryEffect(id: "BackgroundColor", in: namespace)
                )
                .mask(
                    RoundedRectangle(cornerRadius: 30, style: .continuous).matchedGeometryEffect(id: "Mask", in: namespace)
                )
                .padding(20)
                
            } else{
                VStack(alignment: .leading, spacing: 12){
                    
                    Text("AP Calculus AB")
                        .font(.largeTitle).bold()
                        .matchedGeometryEffect(id: "ClassTitle", in: namespace)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                   
                    
                    HStack{
                        Text("Grade")
                        Text("-A").bold()
                        Image(systemName: "chevron.up.circle")
                    }.matchedGeometryEffect(id: "GradeInformation", in: namespace)
                    
                    Text("Taught by Quintin Painter")
                        .matchedGeometryEffect(id: "ClassTeacher", in: namespace)
                    
                    Spacer()
                    
                }
                .padding()
                .background(
                    Image("HeaderImage")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .blur(radius: 20)
                        .matchedGeometryEffect(id: "BackgroundColor", in: namespace)
                )
                .mask(
                    RoundedRectangle(cornerRadius: 30, style: .continuous).matchedGeometryEffect(id: "Mask", in: namespace)
                )
                
            }
        }.onTapGesture {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)){
                show.toggle()
            }
        }
    }
}

struct ClassCardView_Previews: PreviewProvider {
    static var previews: some View {
        ClassCardView(theclass: ExampleClassArray[1])
    }
}
