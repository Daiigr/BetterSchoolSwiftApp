//
//  BulletinCardView.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 5/9/23.
//

import SwiftUI

struct BulletinCardView: View {
    let bulletinCardType: BulletinCardType
    var body: some View {
        
        VStack{
            HStack{
                Image(systemName: bulletinCardType.BulletinCardIconName)
                    .foregroundColor(bulletinCardType.BulletinCardIconColor)
                
                Text(bulletinCardType.BulletinCardTitle).font(.headline)
            }
            HStack(spacing: 30) {
                ForEach(bulletinCardType.BulletinCardData.indices , id: \.self) { index in
                    Text(bulletinCardType.BulletinCardData[index])
                    
                    
                    
                }
                
                
            }
            
        }
    }
}

struct BulletinCardView_Previews: PreviewProvider {
    static var previews: some View {
        BulletinCardView(bulletinCardType: BulletinCardExample)
    }
}
