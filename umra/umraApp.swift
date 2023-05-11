//
//  umraApp.swift
//  umra
//
//  Created by Akhmed on 26.01.23.
//

import SwiftUI
import WebKit

//@main
//struct umraApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}
@main
struct umraApp: App {
    let userSettings = UserSettings()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userSettings)
        }
    }
}
