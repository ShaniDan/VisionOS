//
//  Spline_VisionOSApp.swift
//  Spline-VisionOS
//
//  Created by Shakhnoza Mirabzalova on 5/30/25.
//

import SwiftUI

@main
struct Spline_VisionOSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        WindowGroup(id: "volume") {
            VolumeView()
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.3, height: 0.3, depth: 0.3, in: .meters)
    }
}
