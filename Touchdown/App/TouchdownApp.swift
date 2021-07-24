//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Umair Riaz on 11/07/2021.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
