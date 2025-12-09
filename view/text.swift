//
//  text.swift
//  PrototypeModel
//
//  Created by Jishil Krishna  on 08/12/25.
//

import SwiftUI

struct testView: View {
    var body: some View {
        TabView {
            Text("First Tab")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("Second Tab")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .frame(height: 300) // constrain height so the shape is visible
        .clipShape(RoundedRectangle(cornerRadius: 30)) // apply rounded corners
        .padding()
        .shadow(radius: 10)
    }
}
#Preview {
    testView()
}
