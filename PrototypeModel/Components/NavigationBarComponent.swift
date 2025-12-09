import SwiftUI

struct NavigationBarComponent: View {
    @Environment(\.dismiss) var dismiss
    
    let title: String?
    let backButtonStyle: String?
    let backButtonName: String?
    let optioButtonName: String?
    let optionButtonStyle: String?
    
    var body: some View {
        ZStack {
            Color.white
            if let title = title {
                Text(title)
                    .font(.system(size: 21))
                    .fontWeight(.bold)
                    .padding(.top, 8)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top,-10)
            }
            HStack {
                Button(action: {
                    dismiss()
                }) {
                    HStack {
                        if let backButtonStyle = backButtonStyle {
                            Image(systemName: backButtonStyle)
                                .foregroundStyle(Color.black)
                                .font(.system(size: 14,weight: .semibold))
                        }
                        if let backButtonName = backButtonName {
                            Text(backButtonName)
                                .foregroundStyle(Color.black)
                        }
                    }
                }
                Spacer()
                if let optioButtonName = optioButtonName {
                    Text(optioButtonName)
                        .foregroundStyle(Color.black)
                }
                if let optionButtonStyle = optionButtonStyle {
                    Image(systemName: optionButtonStyle)
                        .foregroundStyle(Color.black)
                        .font(.system(size: 20,weight: .semibold))
                }
            }
            .padding(.horizontal)
        }
        .frame(height: 44)
        .background(Color.white.ignoresSafeArea(edges: .top))
    }
}

#Preview {
    NavigationBarComponent(title: "Centered Title", backButtonStyle: "chevron.left", backButtonName: "Back",optioButtonName: "option",optionButtonStyle: "chevron.down")
}
