//
//  Theme.swift
//  Scrumdinger
//
//  Created by Sarah Clark on 9/4/23.
//

import SwiftUI

enum Theme: String, CaseIterable, Identifiable {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow

    // A color property named accentColor that returns .black or .white depending on the value of self.
    // The accent color provides a high-contrast complement to the theme's main color, ensuring your views remain accessible.
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }

    // Add a Color property named mainColor that creates a color using the enumeration's raw value.
    // This property initializes a color from the asset catalog.
    var mainColor: Color {
        Color(rawValue)
    }

    var name: String {
        rawValue.capitalized
    }

    var id: String {
        name
    }
}
