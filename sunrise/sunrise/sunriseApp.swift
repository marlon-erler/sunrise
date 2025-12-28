//
//  sunriseApp.swift
//  sunrise
//
//  Created by vd on 28/12/2025.
//

import SwiftUI

@main
struct sunriseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    DispatchQueue.main.async {
                        if let window = NSApplication.shared.windows.last {
                            window.toggleFullScreen(true)
                        }
                    }
                }
        }
    }
}
