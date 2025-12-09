//
//  TabViewComponent.swift
//  PrototypeModel
//
//  Created by Jishil Krishna  on 04/12/25.
//

import SwiftUI

struct TabViewComponent: View {
    
    var tabRatio : CGFloat
    var tabPadding: CGFloat
    var imageRatio: CGFloat
    var imagePadding: CGFloat
    var titleRatio: CGFloat
    var titlePadding:CGFloat
    var descriptionRatio:CGFloat
    var descriptionPadding:CGFloat
    var imagePaddingTop:CGFloat

    
    var tabSize : SizeElements {
        SizeElements(screeRatio: tabRatio, padding: tabPadding)
    }
    var imageSize: SizeElements{
        SizeElements(screeRatio: imageRatio, padding: imagePadding)
    }
    var titleFrame : SizeElements{
        SizeElements(screeRatio: titleRatio, padding: titlePadding)
    }
    var descriptionFrame: SizeElements{
        SizeElements(screeRatio: descriptionRatio, padding: descriptionPadding)
    }
    
    var data: [Page]
    @State var currentPage: Int = 0

    var body: some View {
        VStack {
            Spacer()
            ZStack(alignment: .bottom) {
                TabView(selection: $currentPage) {
                    ForEach(data.indices, id: \.self) { index in
                        VStack(spacing: 0) {
                            Image(data[index].image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: imageSize.requiredWidth(),
                                       height: imageSize.requiredHeight())
                                .clipped()
                                .padding(.top,imagePaddingTop)
                            Rectangle()
                                .fill(Color.clear)
                                .frame(width: titleFrame.requiredWidth(),
                                       height: titleFrame.requiredHeight())
                                .overlay {
                                    HStack {
                                        Text(data[index].title)
                                            .font(.system(size: 20, weight: .bold))
                                            .foregroundStyle(Color.black.opacity(0.8))
                                            .multilineTextAlignment(.center)
                                    }
                                }
                            Rectangle()
                                .fill(Color.clear)
                                .frame(width: descriptionFrame.requiredWidth(),
                                       height: descriptionFrame.requiredHeight())
                                .overlay {
                                    Text(data[index].description)
                                        .font(.system(size: 16, weight: .regular))
                                        .foregroundStyle(Color.black.opacity(0.9))
                                        .padding(.horizontal, descriptionFrame.padding)
                                }
                            Spacer()
                        }
                    }
                }
                .tabViewStyle(.page)
                .frame(width: tabSize.requiredWidth(),
                       height: tabSize.requiredHeight())
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 20)) 
                .shadow(color: Color.black.opacity(0.4), radius: 3)
                
                if data.count > 1{
                    CustomSquircleIndicator(
                        numberOfPages: data.count,
                        currentPage: currentPage
                    )
                    .padding(.bottom, 10)
                    .padding()
                }
            }
            .padding()
            
            Spacer()
        }
    }

}
    
#Preview {
    TabViewComponent(
        tabRatio:327/456 ,
        tabPadding: 24,
        imageRatio: 270/194,
        imagePadding: 24,
        titleRatio: 279/24,
        titlePadding:24 ,
        descriptionRatio: 279/88,
        descriptionPadding: 24,
        imagePaddingTop: 20,
        data: Page.processPages
    )
}

