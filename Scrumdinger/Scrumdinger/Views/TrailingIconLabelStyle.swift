//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Sarah Clark on 9/4/23.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

// Add an extension on LabelStyle that creates a static property named trailingIcon.
extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
