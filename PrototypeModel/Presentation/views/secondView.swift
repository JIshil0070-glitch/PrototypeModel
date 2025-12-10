//
//  secondView.swift
//  PrototypeModel
//
//  Created by Jishil Krishna  on 08/12/25.
//

import SwiftUI

struct secondView: View {
    
    @State var showProblemReportView: Bool = false
    
    var body: some View {
        
        NavigationStack {
            VStack{
                NavigationBarComponent(
                    title: "How to Use",
                    backButtonStyle: "chevron.left",
                    backButtonName: nil,
                    optioButtonName: nil,
                    optionButtonStyle: nil
                )
                TabViewComponent(
                    tabRatio:327/466 ,
                    tabPadding: 24,
                    imageRatio: 224/122,
                    imagePadding: 24,
                    titleRatio: 279/24,
                    titlePadding:24 ,
                    descriptionRatio: 279/110,
                    descriptionPadding: 24,
                    imagePaddingTop: 20,
                    data: Page.printOrderPages
                )
                Spacer()
                ZStack {
                    buttonComponent(
                        isPresented: $showProblemReportView,
                        buttonColor: .button,
                        buttonTitle: "Lets get Started",
                        buttonTitleColor: .white,
                        buttonTitleSize: 16,
                        buttonIconLeft: "theatermask.and.paintbrush.fill",
                        buttonIconRight: nil,
                        buttonIconsColor: .white,
                        buttonIconsSize: 20,
                        iconWeight:  nil,
                        itemsSpacing: 2
                    )
                }
            }
            .navigationBarHidden(true)
            .navigationDestination(isPresented: $showProblemReportView, destination:{
                ProblemReportView()
            })
        }
    }
}

#Preview {
    secondView()
}
