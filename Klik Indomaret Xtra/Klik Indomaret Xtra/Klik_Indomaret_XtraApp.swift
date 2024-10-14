//
//  Klik_Indomaret_XtraApp.swift
//  Klik Indomaret Xtra
//
//  Created by Intan Saliya Utomo on 14/10/24.
//

import SwiftUI

@main
struct Klik_Indomaret_XtraApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
