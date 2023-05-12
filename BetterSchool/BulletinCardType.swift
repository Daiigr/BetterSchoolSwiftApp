//
//  BulletinCardType.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 5/9/23.
//

import Foundation
import SwiftUI


struct BulletinCardType{
    let BulletinCardIconName: String
    let BulletinCardIconColor: Color
    let BulletinCardTitle: String
    let BulletinCardData: Array<String>

}

let BulletinCardExample =  BulletinCardType(BulletinCardIconName: "medal",
                                           BulletinCardIconColor: .green,
                                           BulletinCardTitle: "MESAC",
                                           BulletinCardData: [" Competition Dates", "Payment for Travel"])
