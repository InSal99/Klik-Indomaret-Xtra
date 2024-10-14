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
    @StateObject private var categoryViewModel = CategoryViewModel()
    @StateObject private var productViewModel = ProductViewModel()

    var body: some Scene {
        WindowGroup {
            ProductListView()
                .environmentObject(categoryViewModel)
                .environmentObject(productViewModel)
//            ContentView()
        }
    }
}
