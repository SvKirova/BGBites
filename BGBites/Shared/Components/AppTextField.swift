import SwiftUI

struct AppTextField: View {

    let title: String
    let placeholder: String

    @Binding var text: String

    var isSecure = false
    var keyboard: UIKeyboardType = .default

    var body: some View {

        VStack(alignment: .leading, spacing: 8) {

            Text(title)
                .font(.custom("Poppins-Medium", size: 16))
                .foregroundStyle(.bgBrown)

            Group {
                if isSecure {
                    SecureField(
                        "",
                        text: $text,
                        prompt: Text(placeholder)
                            .foregroundColor(.bgGrey)
                    )
                } else {
                    TextField(
                        "",
                        text: $text,
                        prompt: Text(placeholder)
                            .foregroundColor(.bgGrey)
                    )
                    .keyboardType(keyboard)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                }
            }
            .font(.custom("Poppins-Regular", size: 14))
            .foregroundStyle(.bgBrown)
            .tint(Color.bgBrown)
            .padding(.horizontal, 16)
            .frame(height: 50)
            .background(
                Color.bgBlush,
                in: RoundedRectangle(cornerRadius: 12)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.bgBrown, lineWidth: 2)
            )
        }
    }
}
