//
//  File.swift
//  PrototypeModel
//
//  Created by Jishil Krishna  on 08/12/25.
//

import Foundation
import UIKit

class SizeElements {
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    let screeRatio: CGFloat
    let padding : CGFloat
    
    func requiredWidth() -> CGFloat {
        return screenWidth - (2 * padding)
    }
    func requiredHeight() -> CGFloat {
        return requiredWidth() / screeRatio
    }
    init(screeRatio: CGFloat, padding: CGFloat) {
        self.screeRatio = screeRatio
        self.padding = padding
    }
}
