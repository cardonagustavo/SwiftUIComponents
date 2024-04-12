//
//  SwiftUIComponentsApp.swift
//  SwiftUIComponents
//
//  Created by Gustavo Adolfo Cardona Quintero on 12/04/24.
//

import SwiftUI

@main
struct SwiftUIComponentsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            AdvancedTextView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
