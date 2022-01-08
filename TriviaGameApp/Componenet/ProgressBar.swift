//
//  ProgressBar.swift
//  TriviaGameApp
//
//  Created by Andres Made on 1/7/22.
//

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.793))
                .cornerRadius(10)
                
            
            Rectangle()
                .frame(width: progress, height: 4)
                .foregroundColor(colorTheme)
                .cornerRadius(10)
                
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 40)
    }
}
