//
//  ContentView.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 5/7/23.
//

import SwiftUI



struct DashboardView: View{
    var body: some View{
        NavigationStack{
            Text("Hello")
        }
    }
}




struct DragonCardView: View{
    var body: some View{
        NavigationStack{
            ScrollView{
                VStack{
                    Text("DragonCard").font(.largeTitle.bold())
                    
                  
                   
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
            }.frame(maxWidth: .infinity)

            .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    
                    ToolbarItem{
                        
                        Button{
                            
                        } label: {
                            HStack{
                                Image(systemName: "creditcard")
                                Text("Top-up").font(.caption)
                            }.padding()
                            
                        }
                       
                        
                    }
                    
                    ToolbarItem{
                        Button {
                            
                        } label: {
                            HStack{
                                Text("Daniel Grbac Bravo").foregroundColor(.primary).font(.caption)
                                Image("ProfileImage").resizable().scaledToFit().clipShape(Circle())
                            }
                            
                            
                           
                        }
                    }
                    
                    
                    
                    
                    
                   
            }

        }
    }
}

struct ClassesView: View{
    let ClassArray: Array<Class>
    var body: some View{
        NavigationStack{
            ScrollView{
                VStack{
                    Text("Classes").font(.largeTitle.bold())
                    
                   
                    ClassCardView(theclass: ClassArray[1])
                     
                    
                    Divider().padding()
                    
                    ClassCardView(theclass: ClassArray[2])
                       
                    
                    
                }
                
                .frame(maxWidth: .infinity)
            }.frame(maxWidth: .infinity)

            .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button {
                            
                        } label: {
                            HStack{
                                Text("Daniel Grbac Bravo").foregroundColor(.primary).font(.caption)
                                Image("ProfileImage").resizable().scaledToFit().clipShape(Circle())
                            }
                            
                            
                           
                        }
                    }
                    
                    
                    
                    
                    
                   
                }

        }
    }
}

struct ContentView: View {
    let Student: Student
    let Class : Array<Class>
    var body: some View {
        
       
        TabView{
            
            DashboardView().tabItem{
                Image(systemName: "gauge")
                Text("Dashboard")
                
            }
            
            
            Text("Bulletin").tabItem{
                Image(systemName: "list.bullet.clipboard")
                Text("Bulletin")
            }
            
            
            DragonCardView().tabItem{
                Image(systemName: "dollarsign")
                Text("Daragon Card")
                
            }
            
            
            ClassesView(ClassArray: ExampleClassArray).tabItem{
                Image(systemName: "graduationcap")
                Text("Classes")
            }
            
          

            
        }
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(Student: ExampleUser1, Class: ExampleClassArray )
    }
}
