import SwiftUI

struct AuthHeader: View {
    let title: String
    let subtitle: String

    var body: some View {
        VStack(spacing: 8) {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 104, height: 104)
                .clipShape(Circle())

            Text(title)
                .font(.custom("VampiroOne-Regular", size: 34))

            Text(subtitle)
                .font(.custom("Poppins-Regular", size: 12))
                .tracking(1.5)
        }
        .foregroundStyle(.bgBrown)
        .multilineTextAlignment(.center)
    }
}
