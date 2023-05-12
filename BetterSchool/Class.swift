//
//  Class.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 5/7/23.
//

import Foundation
import SwiftUI

struct Class{
    let CurriculumType: String
    let ClassName: String
    let Block: Int
    let RoomNumber: Int
    let ClassIcon: String
    let ClassColor: Color
}

var ExampleClassArray: Array<Class> = [
    Class(CurriculumType:"HS", ClassName: "English 12", Block: 7, RoomNumber: 2107, ClassIcon: "book", ClassColor: .orange),
    Class(CurriculumType: "AP", ClassName: "Enviromental Science", Block: 2, RoomNumber: 2107, ClassIcon: "tree",ClassColor: .green),
    Class(CurriculumType: "AP", ClassName: "Calculus AB", Block: 6, RoomNumber: 2107,ClassIcon: "function" , ClassColor: .blue),
    Class(CurriculumType: "IB", ClassName: "Biology HL", Block: 6, RoomNumber: 2107,ClassIcon: "lungs", ClassColor: .purple )]
    

