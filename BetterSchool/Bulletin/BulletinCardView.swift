//
//  BulletinCardView.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 6/16/23.
//

import SwiftUI

struct BulletinCardView: View {
  let bulletinCardData: BulletinCardData
  let id: Namespace.ID

  var body: some View {
      ZStack{ //cardview
          Image(bulletinCardData.image)
            .resizable()
            .scaledToFill()
            .matchedGeometryEffect(id: "\(bulletinCardData.id)-image", in: id)
          
          VStack(alignment: .leading, spacing: 12) {//textview
            Text(bulletinCardData.description)
              .foregroundColor(.secondary)
              .matchedGeometryEffect(id: "\(bulletinCardData.id)-description", in: id)
              .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
              
              Text(bulletinCardData.title)
                  .font(.largeTitle.bold())
                .foregroundColor(bulletinCardData.titleColor)
                .frame(width: 300, alignment: .leading)
                .matchedGeometryEffect(id: "\(bulletinCardData.id)-title", in: id)
          }
          .frame(maxWidth: .infinity, maxHeight: .infinity)
          .padding()
          .matchedGeometryEffect(id: "\(bulletinCardData.id)-TextZStack", in: id)
          
      }
      .frame(maxWidth: UIScreen.main.bounds.size.width ,maxHeight: UIScreen.main.bounds.size.width)
      .cornerRadius(16)
      .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 5)
      .matchedGeometryEffect(id: "\(bulletinCardData.id)-CardZStack", in: id)
  }
}

//preview code
struct CardView_Previews: PreviewProvider {
  @Namespace static var id
  static var previews: some View {
      let bulletinCardData = BulletinCardData(title: "Congraulations Class of 2023🎉",  titleColor: Color.white , image: "example-photo-1", description: "best wishes to all" , detailedMarkdownDescrition: "This is a markup *document*.")
    BulletinCardView(bulletinCardData: bulletinCardData, id: id)
  }
}
