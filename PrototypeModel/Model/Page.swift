//
//  Page.swift
//  PrototypeModel
//
//  Created by Jishil Krishna  on 03/12/25.
//

import Foundation

struct Page: Identifiable {
    let id: UUID
    let image: String
    let title: String
    let description: String
    
    init(id: UUID, image: String, title: String, description: String) {
        self.id = id
        self.image = image
        self.title = title
        self.description = description
    }
}
extension Page{
    static var processPages: [Page] = [
        Page(
                id: UUID(),
                image: "ImageSelection",
                title: "Image Selection",
                description: "Import yout favorite images from your smartphone Photos or pintrest to create your very own orginal Stickers!"
            ),
            Page(
                id: UUID(),
                image: "Cropping",
                title: "Cropping",
                description: "The app Automaticly crops the images. You can manually adjust the crop to your liking utill you're satisfied."
            ),
            Page(
                id: UUID(),
                image: "College",
                title: "College",
                description: "Once you have a sticker image, try creating a sticker College! You can adjust the position, angle, and size of each sticker induvidually as many time as you like."
            )
    ]
    
    static var printOrderPages: [Page] = [
        Page(id: UUID(), image: "sheetAndOrder", title: "Print Order", description: "Store pickup orders come as uncut sheets, and the final price is set after choosing a store. Shipped orders arrive pre-cut and ready to use."),
        Page(id: UUID(), image: "storePickup", title: "Print Order", description: "For store pickup, the stickers are provided as an uncut sheet, and the final price will be confirmed after the pickup location is selected."),
        Page(id: UUID(), image: "shipOrder", title: "Print Order", description: "Stickers come pre-cut and ready to use.")
    ]
  
    static var problemReportPages: [Page] = [
        Page(id: UUID(), image: "Report", title: "We have received your report.", description: "Thank you for your cooperation. We look forward to your continued support of Micteys.")
    ]
}
