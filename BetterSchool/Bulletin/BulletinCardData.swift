//
//  BulletinCardData.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 6/16/23.
//
import Foundation
import SwiftUI


struct BulletinCardData: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let titleColor: Color
    let image: String
    let description: String
    let detailedMarkdownDescrition: String
    }



