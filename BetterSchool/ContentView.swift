//
//  ContentView.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 5/7/23.
//

import SwiftUI
import SwiftUICharts



struct DashboardView: View{
    var body: some View{
        NavigationStack{
            Text("Hello")
        }
    }
}




struct DragonCardView: View{
    @Namespace var namespace
    @State var show = false
    var body: some View{
        NavigationStack{
            ScrollView{
                VStack{
                    HStack{
                        Text("Expenses")
                            .font(.largeTitle.bold())
                
                        
                        Button {
                            
                        } label: {
                            Image("ProfileImage")
                                .resizable()
                                .scaledToFit()
                                .mask(Circle())
                        }
                        .frame(width: 50,  alignment: .leading)
                        .offset(x: 130)
                        .padding()

                    }  .frame(maxWidth: .infinity,  alignment: .topLeading)
                        .padding()
          
                    
                    
                 
                        LineChartView(data: [12, 25, 30, 15,22, 5,7,8,7,6,14,0], title: "Weekly Expenses", legend: "QAR", form: ChartForm.extraLarge)
                            .padding()

                            .matchedGeometryEffect(id: "ExpensesGraph", in: namespace)
                    
                    
                    
                }
              
                .frame(maxWidth: .infinity)
            }.frame(maxWidth: .infinity)
            

            

        }
        
    }
}


struct ContentView: View {
    
    let previewData: [BulletinCardData] = [
         BulletinCardData(title: "Congraulations to class of 2023 🥳", titleColor: Color.white , image: "example-photo-1", description: "This is a description of Card 1.", detailedMarkdownDescrition:
                 """
                 # Congratulations to the Class of 2023 at the American School of Doha
                 ### A Proud Celebration
                 Everyone at the [American School of Doha](https://asd.edu.qa/) takes great pride in our Class of 2023 for their achievements, character development, and community engagement despite all conundrum today。

                 """
                 ),
         BulletinCardData(title: "Card 2",titleColor: Color.black ,  image: "example-photo-1", description: "This is a description of Card 2.", detailedMarkdownDescrition:
   """
   # Congratulations to the Class of 2023 at the American School of Doha
   ## A Proud Celebration
   Everyone at the [American School of Doha](https://asd.edu.qa/) takes great pride in our Class of 2023 for their achievements, character development, and community engagement despite all conundrum today。

   """)]
    let Student: Student
    
    var body: some View {
        
       
        TabView{
            
            DashboardView().tabItem{
                Image(systemName: "gauge")
                Text("Dashboard")
                
            }
            
            
            BulletinView(data: previewData).tabItem{
                Image(systemName: "list.bullet.clipboard")
                Text("Bulletin")
            }
            
            
            DragonCardView().tabItem{
                Image(systemName: "dollarsign")
                Text("Daragon Card")
                
            }
            
            
           Text("Class Placeholder").tabItem{
                Image(systemName: "graduationcap")
                Text("Classes")
            }
            
          

            
        }
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(Student: ExampleUser1 )
    }
}
