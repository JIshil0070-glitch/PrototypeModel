//
//  buttonComponent.swift
//  PrototypeModel
//
//  Created by Jishil Krishna  on 04/12/25.
//

import SwiftUI

struct buttonComponent: View {
    
    @Binding var isPresented: Bool
    
    let buttonFrame = SizeElements(screeRatio: 375/80, padding: 0)
    let buttonSize = SizeElements(screeRatio: 327/48, padding: 27)
        
    let buttonColor: Color?
    let buttonTitle : String?
    let buttonTitleColor: Color?
    let buttonTitleSize: CGFloat?
    let buttonIconLeft: String?
    let buttonIconRight: String?
    let buttonIconsColor: Color?
    let buttonIconsSize: CGFloat?
    let iconWeight: Font.Weight?
    let itemsSpacing: CGFloat?
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .frame(width: buttonFrame.requiredWidth(),height: buttonFrame.requiredHeight())
            Button(action: {
                isPresented = true
            }, label: {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(buttonColor)
                    .frame(width: buttonSize.requiredWidth(),height: buttonSize.requiredHeight())
                    .frame(height: 50)
                    .overlay(
                        HStack(spacing: itemsSpacing) {
                            if let buttonIconLeft = buttonIconLeft,let buttonIconsSize = buttonIconsSize,let buttonIconsColor = buttonIconsColor {
                                Image(systemName: buttonIconLeft)
                                    .font(.system(size: buttonIconsSize,weight: iconWeight))
                                    .foregroundColor(buttonIconsColor)
                            }
                            if let buttonTitle = buttonTitle,let buttonTitleColor = buttonTitleColor,let buttonTitleSize = buttonTitleSize {
                                Text(buttonTitle)
                                    .font(.system(size: buttonTitleSize))
                                    .foregroundColor(buttonTitleColor)
                            }
                            if let buttonIconRight = buttonIconRight,let buttonIconsSize = buttonIconsSize,let buttonIconsColor = buttonIconsColor {
                                Image(systemName: buttonIconRight)
                                    .font(.system(size: buttonIconsSize,weight: iconWeight))
                                    .foregroundColor(buttonIconsColor)
                            }
                        }
                    )
                    .padding()
            })
        }
    }
}

#Preview {
    buttonComponent(isPresented:.constant(false),buttonColor: .green, buttonTitle: "yes", buttonTitleColor: .white, buttonTitleSize: 20, buttonIconLeft: nil, buttonIconRight: nil, buttonIconsColor: nil, buttonIconsSize: nil, iconWeight: nil, itemsSpacing: nil)
}

