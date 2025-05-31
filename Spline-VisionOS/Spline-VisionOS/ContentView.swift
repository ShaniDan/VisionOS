//
//  ContentView.swift
//  Spline-VisionOS
//
//  Created by Shakhnoza Mirabzalova on 5/30/25.
//

import SwiftUI
import SplineRuntime

struct ContentView: View {
    var body: some View {
        VStack {
           CharacterView()
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}




struct CharacterView: View {
    var body: some View {
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/NMp83bor-xtTS3yh1HjB/scene.splineswift")!

        SplineView(sceneFileURL: url).ignoresSafeArea(.all)
    }
}
