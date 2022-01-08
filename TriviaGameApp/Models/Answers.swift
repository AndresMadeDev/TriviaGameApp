//
//  Answers.swift
//  TriviaGameApp
//
//  Created by Andres Made on 1/7/22.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
