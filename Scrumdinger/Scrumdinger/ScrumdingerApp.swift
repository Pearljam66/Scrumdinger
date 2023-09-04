//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Sarah Clark on 8/14/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
