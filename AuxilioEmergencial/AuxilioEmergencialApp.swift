//
//  AuxilioEmergencialApp.swift
//  AuxilioEmergencial
//
//  Created by Roberto Edgar Geiss on 29/10/24.
//

import SwiftUI
import SwiftData

@main
struct AuxilioEmergencialApp: App
{
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
