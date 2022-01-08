//
//  TriviaView.swift
//  TriviaGameApp
//
//  Created by Andres Made on 1/7/22.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        if triviaManager.reachEnd {
            VStack(spacing: 20) {
                Text("Trivia Game")
                    .LilacTitle()
                
                Text("Congradulations, you have finished the game")
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                
                Button{
                    Task.init{
                       await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Play Again")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(colorTheme)
            .edgesIgnoringSafeArea(.all)
            .background(Color.yellow.opacity(0.1))
        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
        
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}
