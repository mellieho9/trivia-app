//
//  Extensions.swift
//  All Topics Trivia
//
//  Created by Clementine on 8/20/22.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title).fontWeight(.heavy).foregroundColor(Color("AccentColor"))
    }
}
