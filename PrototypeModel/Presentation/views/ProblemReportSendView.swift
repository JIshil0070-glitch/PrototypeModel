//
//  ProblemReportSendView.swift
//  PrototypeModel
//
//  Created by Jishil Krishna  on 09/12/25.
//

import SwiftUI

struct ProblemReportSendView: View {
    
    fileprivate func customButton(_ mainButton: Binding<Bool>,_ secondaryButton: Binding<Bool>,_ text: String)-> some View{
        HStack(spacing: -5) {
            Button(action: {
                if !mainButton.wrappedValue {
                    mainButton.wrappedValue = true
                    secondaryButton.wrappedValue = false
                }
            }) {
                HStack {
                    Image(systemName : mainButton.wrappedValue ? "largecircle.fill.circle" : "circle")
                        .font(.system(size: 25))
                        .foregroundColor(mainButton.wrappedValue ? Color.blue : Color.gray)
                }
            }
            Text(text)
                .foregroundStyle(Color.black)
                .font(.system(size: 17))
            .padding(.horizontal)

        }
    }
    
    fileprivate func createFrame(_ ratio: CGFloat) -> some View {
        let frameSize = SizeElements(screeRatio: ratio, padding: 20)
        return Rectangle()
            .fill(Color.white)
            .frame(width: frameSize.requiredWidth(),
                   height: frameSize.requiredHeight())
    }
    @State private var content: String = "Please enter yout Content"
    @State  var buttonOne : Bool = false
    @State  var buttonTwo : Bool = false
    
    var body: some View {
        ZStack {
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
                                .foregroundStyle(Color.gray)
                                .font(.system(size: 14, weight: .regular))
                            Spacer()
                        }
                        
                    }
                    .padding(.bottom,20)
                createFrame(327/114)
                    .cornerRadius(10)
                    .shadow(color:.gray.opacity(0.8),radius: 3)
                    .overlay {
                        VStack(alignment: .leading, spacing: 16) {
                           customButton($buttonOne,$buttonTwo, "Report quality issues")
                            Divider()
                                .frame(width: 300,height:1)
                                .background(Color.gray.opacity(0.1))
                          customButton($buttonTwo,$buttonOne,"Other")
                        }
                        .padding(.vertical)
                    }
                    .padding(.bottom,30)
                createFrame(327/20)
                    .overlay {
                        HStack {
                            Text("Inquiry Details")
                                .font(.system(size: 16, weight: .semibold))
                            Spacer()
                        }
                    }
                    .padding(.vertical,25)
                createFrame(327/188)
                    .overlay {
                        TextEditor(text: $content)
                            .foregroundStyle(Color.black.opacity(0.5))
                            .padding()
                    }
                    .cornerRadius(8)
                    .shadow(color:.gray.opacity(0.6),radius: 2)
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
                    itemsSpacing: 3
                )
            }
            .padding()
        }
    }
}

#Preview {
    ProblemReportSendView()
}
