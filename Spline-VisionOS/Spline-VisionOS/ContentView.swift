//
//  ContentView.swift
//  Spline-VisionOS
//
//  Created by Shakhnoza Mirabzalova on 5/30/25.
//

import SwiftUI
import SplineRuntime

struct ContentView: View {
    
    @State private var isShowingVolume = false
    @State private var isShowingImmersiveSpace = false
    
    @Environment(\.openWindow) var openWindow
    @Environment(\.dismissWindow) var dismissWindow
    
    var body: some View {
        VStack {
           CharacterView()
            
            HStack {
                Toggle("Show Volume", isOn: $isShowingVolume)
                    .toggleStyle(.button)
                    .onChange(of: isShowingVolume) { _, isShowing in
                        if isShowing {
                            openWindow(id: "volume")
                        } else {
                            dismissWindow(id: "volume")
                        }
                    }
            }.padding()
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

struct VolumeView: View {
    var body: some View {
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/wVQTGW-DB7bw-ANq6D3v/scene.splineswift")!

        SplineVolumetricContent(sceneFileURL: url)
    }
}
