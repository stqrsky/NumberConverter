//
//  NumberConverterApp.swift
//  Shared
//
//  Created by star on 13.05.22.
//

import SwiftUI

@main
struct NumberConverterApp: App {
    var body: some Scene {
        WindowGroup {
            #if os(macOS)
            ContentView()
                .frame(minWidth: 500)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            #else
            ContentView()
            #endif
        }
    }
}
