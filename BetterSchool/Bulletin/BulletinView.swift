//
//  BulletinView.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 6/16/23.
//

import SwiftUI

struct BulletinView: View {
    @State var selectedCard: BulletinCardData? = nil
    @Namespace private var cardNamespace
    var data: [BulletinCardData]
    var body: some View {
        NavigationStack{
            ZStack {
                if selectedCard == nil {
                    VStack {
                        ScrollView {
                            VStack {
                                Text("THURSDAY 1 JUNE")
                                    .font(.caption.bold())
                                    .foregroundColor(.secondary)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                                Text("Today")
                                    .font(.largeTitle.bold())
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                                
                                VStack {
                                    ForEach(data) { card in
                                        BulletinCardView(bulletinCardData: card, id: cardNamespace)
                                            .padding()
                                            .onTapGesture{
                                                withAnimation(.spring()) {
                                                    selectedCard = card
                                                }
                                            }
                                        
                                    }
                                }
                            }
                        }
}
                } else {
                    BulletinDetailedCardView(bulletinCardData: selectedCard!, id: cardNamespace, selectedCard: $selectedCard)
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct BulletinView_Previews: PreviewProvider {
    static var previews: some View {
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
        BulletinView(data: previewData)
    }
}
