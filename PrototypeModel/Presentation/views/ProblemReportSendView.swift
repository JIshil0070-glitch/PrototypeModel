//
//  ProblemReportSendView.swift
//  PrototypeModel
//
//  Created by Jishil Krishna  on 09/12/25.
//

import SwiftUI

struct ProblemReportSendView: View {
    
    fileprivate func createFrame(_ ratio: CGFloat) -> some View {
        let frameSize = SizeElements(screeRatio: ratio, padding: 20)
        return Rectangle()
            .fill(Color.white)
            .frame(width: frameSize.requiredWidth(),
                   height: frameSize.requiredHeight())
    }

    
    var body: some View {
        VStack(spacing: 5) {
            NavigationBarComponent(
                title: "Problem Report",
                backButtonStyle: "chevron.left",
                backButtonName: nil,
                optioButtonName: nil,
                optionButtonStyle: nil
            )
            createFrame(327/22)
                .overlay {
                    HStack {
                        Text("What kind of problem is occurring?")
                            .font(.system(size: 16, weight: .semibold))
                        Spacer()
                    }
                }
                .padding(.top, 20)
            createFrame(327/20)
                .overlay {
                    HStack {
                        Text("Please select an item")
                            .font(.system(size: 14, weight: .regular))
                        Spacer()
                    }
                    
                }
                .padding(.bottom,20)
            createFrame(327/124)
                .cornerRadius(10)
                .shadow(color:.gray.opacity(0.8),radius: 5)
                .overlay {
                    HStack {
                        Button(action: {
                            
                        }, label: {
                            
                        })
                    }
                }
                .padding(.bottom,50)
            createFrame(327/20)
                .overlay {
                    HStack {
                        Text("Inquiry Details")
                            .font(.system(size: 16, weight: .semibold))
                        Spacer()
                    }
                }
            createFrame(327/188)
                .overlay {
                    
                }
            Spacer()
            Divider()
            buttonComponent(
                isPresented: .constant(false),
                buttonColor: .button,
                buttonTitle: "Send",
                buttonTitleColor: .white,
                buttonTitleSize: 20,
                buttonIconLeft: nil,
                buttonIconRight: "chevron.right",
                buttonIconsColor: .white,
                buttonIconsSize: 16,
                iconWeight: .regular,
                itemsSpacing: 3)
        }
        .padding()
    }
}

#Preview {
    ProblemReportSendView()
}
