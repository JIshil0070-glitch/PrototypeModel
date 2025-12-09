//
//  ProblemReportView.swift
//  PrototypeModel
//
//  Created by dilsa on 09/12/25.
//

import SwiftUI

struct ProblemReportView: View {
    
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
                    tabPadding: 14,
                    imageRatio: 70/87.4,
                    imagePadding: 20,
                    titleRatio: 279/48,
                    titlePadding: 14,
                    descriptionRatio: 279/66,
                    descriptionPadding: 14,
                    data: Page.problemReportPages)
                
                Spacer()
            }
        }
    }
}

#Preview {
    ProblemReportView()
}
