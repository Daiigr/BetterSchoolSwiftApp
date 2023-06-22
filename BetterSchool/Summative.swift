//
//  Summative.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 5/14/23.
//

import Foundation

struct Summative: Identifiable {
    let id = UUID()
    let dateAssigned: Date
    let dateDue: Date
    let AssesmentName: String
    let AssesmentDescription: String
    let AssesmentType: String
}

let exampleSummative = Summative(dateAssigned: Date(timeIntervalSinceReferenceDate: 118800)
                                   , dateDue: Date(timeIntervalSinceReferenceDate: 118800), AssesmentName: "Derivatives Unit 1 Exam", AssesmentDescription: "this exams convers all content from units 1", AssesmentType: "exam")
