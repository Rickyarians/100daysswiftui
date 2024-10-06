//
//  _00days_of_swiftuiApp.swift
//  100days-of-swiftui
//
//  Created by Ricky Ariansyah on 03/10/24.
//

import SwiftUI

@main
struct _00days_of_swiftuiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
