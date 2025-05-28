//
//  ContentView.swift
//  Visual Chem
//
//  Created by Shakhnoza Mirabzalova on 5/23/25.
//

import SwiftUI
import RealityKit

struct ContentView: View {
        
    var body: some View {
        // git push test
        NavigationStack {
            VStack {
                HStack(spacing: 24) {
                    NavigationLink(destination: WaterView(), label: { RoundedRectangle(cornerRadius: 12.0)
                            .foregroundStyle(.blue)
                            .frame(width: 150, height: 150)

                    }
                    )
                    
                    NavigationLink(destination: WaterView(), label: {
                        RoundedRectangle(cornerRadius: 12.0)
                            .foregroundStyle(.red)
                            .frame(width: 150, height: 150)
                    })
                    
                    NavigationLink(destination: WaterView(), label: {
                        RoundedRectangle(cornerRadius: 12.0)
                            .foregroundStyle(.green)
                            .frame(width: 150, height: 150)

                    })
                }
                .padding(12)
                //ToggleImmersiveSpaceButton()
            }
            .padding(12)
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}

