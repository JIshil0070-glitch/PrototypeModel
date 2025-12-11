import SwiftUI

struct ContentView: View {
    
    @State private var showSecondView: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    NavigationBarComponent(
                        title: "Help / User Manual",
                        backButtonStyle: "chevron.left",
                        backButtonName: nil,
                        optioButtonName: nil,
                        optionButtonStyle: nil
                    )
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
                    Spacer()
                    Divider()
                        buttonComponent(
                            isPresented: $showSecondView,
                            buttonColor: .button,
                            buttonTitle: "Next",
                            buttonTitleColor: .white,
                            buttonTitleSize: 16,
                            buttonIconLeft: nil,
                            buttonIconRight: "chevron.right",
                            buttonIconsColor: .white,
                            buttonIconsSize: 10,
                            iconWeight:  .semibold,
                            itemsSpacing: 2
                        )
                }
            }
            .navigationBarHidden(true)
            .navigationDestination(isPresented: $showSecondView, destination: {
                secondView()
            })
        }
    }
}

#Preview {
    ContentView()
}
