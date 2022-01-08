//
//  Extension.swift
//  TriviaGameApp
//
//  Created by Andres Made on 1/7/22.
//

import Foundation
import SwiftUI

extension Text{
    func LilacTitle() -> some View{
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(colorTheme)
    }
}
