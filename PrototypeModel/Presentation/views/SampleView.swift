//
//  SampleView.swift
//  PrototypeModel
//
//  Created by dilsa on 09/12/25.
//

import SwiftUI

struct SampleView: View {
    
    
    var body: some View {
        VStack {
            NavigationBarComponent(
                title: "Sample View",
                backButtonStyle: nil,
                backButtonName: "back",
                optioButtonName: nil,
                optionButtonStyle: nil)
        }
    }
}

#Preview {
    SampleView()
}
