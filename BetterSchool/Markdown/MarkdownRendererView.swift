//
//  MarkdownRendererView.swift
//  testapp
//
//  Created by Daniel Grbac Bravo on 6/3/23.
//

import Foundation
import SwiftUI
import Markdown

struct MarkdownRendererView: View {
    let markdown: String
    let results: [ParserResult]

    init(markdown: String) {
        self.markdown = markdown

        // Create the results
        let document = Document(parsing: markdown)
        var parser = MarkdownAttirbutedStringParser()
        results = parser.parserResults(from: document)
    }

    var body: some View {
        VStack{
            ForEach(results) { result in
                Text(result.attributedString)
                    .padding()
            }
        }
        
    }
}
