//
//  ProblemReportView.swift
//  PrototypeModel
//
//  Created by dilsa on 09/12/25.
//

import SwiftUI

struct ProblemReportView: View {
    
    @State private var showNextPage: Bool = false

    var body: some View {
        NavigationStack{
            VStack {
                NavigationBarComponent(
                    title: "Problem Report",
                    backButtonStyle: "chevron.left",
                    backButtonName: nil,
                    optioButtonName: nil,
                    optionButtonStyle: nil)
                
                TabViewComponent(
                    tabRatio: 327/277.4,
                    tabPadding: 24,
                    imageRatio: 70/67.4,
                    imagePadding: 165.5,
                    titleRatio: 279/48,
                    titlePadding: 24,
                    descriptionRatio: 279/66,
                    descriptionPadding: 24,
                    imagePaddingTop: 50,
                    data: Page.problemReportPages)
                .padding(.bottom, 250)
                
                Divider()
                buttonComponent(
                    isPresented: $showNextPage,
                    buttonColor: .button,
                    buttonTitle: "Back to Home",
                    buttonTitleColor: .white,
                    buttonTitleSize: 16,
                    buttonIconLeft: nil,
                    buttonIconRight: nil,
                    buttonIconsColor: .white,
                    buttonIconsSize: nil,
                    iconWeight: nil,
                    itemsSpacing: nil
                )
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ProblemReportView()
}
