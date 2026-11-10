import SwiftUI

struct RegisterView: View {
    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""

    private var isFormValid: Bool {
        !fullName.isEmpty
        && !email.isEmpty
        && !password.isEmpty
        && password == confirmPassword
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                AuthHeader(
                    title: "Create account",
                    subtitle: "Join us and explore Bulgarian cuisine."
                )

                VStack(spacing: 20) {
                    AppTextField(
                        title: "Full Name",
                        placeholder: "Enter your name",
                        text: $fullName
                    )
                    AppTextField(
                        title: "Email",
                        placeholder: "Enter your email",
                        text: $email,
                        keyboard: .emailAddress
                    )
                    AppTextField(
                        title: "Password",
                        placeholder: "Create a password",
                        text: $password,
                        isSecure: true
                    )
                    AppTextField(
                        title: "Confirm Password",
                        placeholder: "Repeat your password",
                        text: $confirmPassword,
                        isSecure: true
                    )
                }
                .padding(.top, 16)

                Button("Create Account") {
                    // register logic comes later
                }
                .buttonStyle(
                    PrimaryButtonStyle(
                        backgroundColor: .bgBrown,
                        textColor: .white
                    )
                )
                .disabled(!isFormValid)
                .padding(.top, 24)

                HStack(spacing: 4) {
                    Text("Already have an account?")
                    NavigationLink {
                        LoginView()
                    } label: {
                        Text("Log In")
                            .font(.custom("Poppins-Bold", size: 15, relativeTo: .subheadline))
                            .bold()
                    }
                }
                .font(.custom("Poppins-Regular", size: 15, relativeTo: .subheadline))
                .foregroundStyle(.bgBrown)
            }
            .padding(.horizontal, 20)
            .padding(.top, 8)
        }
        .scrollBounceBehavior(.basedOnSize)
        .background(Color.bgPink.ignoresSafeArea())
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        RegisterView()
    }
}
