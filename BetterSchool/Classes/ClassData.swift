//
//  ClassData.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 6/20/23.
//


import Foundation
import SwiftUI

struct ClassData: Identifiable{
    let id = UUID()
    let CurriculumType: String
    let ClassName: String
    let Block: Int
    let RoomNumber: Int
    let ClassIcon: String
    let ClassColor: Color
}

var ExampleClassArray: Array<ClassData> = [
    ClassData(CurriculumType:"HS", ClassName: "English 12", Block: 7, RoomNumber: 2107, ClassIcon: "book", ClassColor: .orange),
    ClassData(CurriculumType: "AP", ClassName: "Enviromental Science", Block: 2, RoomNumber: 2107, ClassIcon: "tree",ClassColor: .green),
    ClassData(CurriculumType: "AP", ClassName: "Calculus AB", Block: 6, RoomNumber: 2107,ClassIcon: "function" , ClassColor: .blue),
    ClassData(CurriculumType: "IB", ClassName: "Biology HL", Block: 6, RoomNumber: 2107,ClassIcon: "lungs", ClassColor: .purple )]
    


