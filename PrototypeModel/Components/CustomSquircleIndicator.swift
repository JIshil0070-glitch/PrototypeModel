//
//  CustomSquircleIndicator.swift
//  PrototypeModel
//
//  Created by Jishil Krishna  on 04/12/25.
//

import SwiftUI

struct CustomSquircleIndicator: View {
    let numberOfPages: Int
    var currentPage: Int
    
    let indicatorHeight: CGFloat = 6
    let inactiveWidth: CGFloat = 6
    let activeWidth: CGFloat = 26
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<numberOfPages, id: \.self) { index in
                RoundedRectangle(cornerRadius: 3)
                    .fill(index == currentPage ? Color.black.opacity(0.9) : Color.gray.opacity(0.5))
                    .frame(
                        width: index == currentPage ? activeWidth : inactiveWidth,
                        height: indicatorHeight
                    )
                    .animation(.easeInOut(duration: 0.2), value: currentPage)
            }
        }
    }
}

#Preview {
    CustomSquircleIndicator(numberOfPages: 5, currentPage: 3)
}
