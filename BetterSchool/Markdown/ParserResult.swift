//
//  ParserResult.swift
//  testapp
//
//  Created by Daniel Grbac Bravo on 6/1/23.
//

import Foundation

struct ParserResult: Identifiable{
    let id = UUID()
    let attributedString: AttributedString
    let isCodeBlock: Bool
    let codeBlockLanguage: String?
}
