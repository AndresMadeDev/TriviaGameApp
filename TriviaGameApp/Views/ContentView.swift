//
//  ContentView.swift
//  TriviaGameApp
//
//  Created by Andres Made on 1/7/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack {
                    Text("Trivia Game")
                        .LilacTitle()
                    Text("Are you ready to test out your trivia skills")
                        .foregroundColor(colorTheme)
                }
                NavigationLink(destination: {
                    TriviaView()
                        .environmentObject(triviaManager)
                }, label: {
                    PrimaryButton(text: "Lets Go!")
                })
               
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
        .background(Color.yellow.opacity(0.1))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
