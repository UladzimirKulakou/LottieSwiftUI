//
//  LottieSwiftUIApp.swift
//  LottieSwiftUI
//
//  Created by Владимир  on 17.06.22.
//

import SwiftUI

@main
struct LottieSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
