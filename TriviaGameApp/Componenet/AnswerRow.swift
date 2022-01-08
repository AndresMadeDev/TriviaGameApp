//
//  AnswerRow.swift
//  TriviaGameApp
//
//  Created by Andres Made on 1/7/22.
//

import SwiftUI

struct AnswerRow: View {
    var answer: Answer
    @EnvironmentObject var triviaManager: TriviaManager
    @State private var isSelected: Bool = false
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "circle.fill")
                .font(.caption)
            Text(answer.text)
                .bold()
            
            if isSelected {
                Spacer()
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? .green : .red)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(triviaManager.answerSelected ?(isSelected ? colorTheme : .gray) : colorTheme)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: isSelected ? (answer.isCorrect ? Color.green : Color.red) : .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            if !triviaManager.answerSelected {
                isSelected = true
                triviaManager.selectAnswer(answer: answer)
            }
        }
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "Single", isCorrect: false))
            .environmentObject(TriviaManager())
            .previewLayout(.sizeThatFits)
    }
}
