import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                AuthHeader(
                    title: "Welcome back!",
                    subtitle: "Log in to discover your favorite recipes."
                )
                
                VStack(spacing: 20) {
                    AppTextField(
                        title: "Email",
                        placeholder: "Enter your email",
                        text: $email,
                        keyboard: .emailAddress
                    )
                    AppTextField(
                        title: "Password",
                        placeholder: "Enter your password",
                        text: $password,
                        isSecure: true
                    )
                }
                .padding(.top, 16)
                
                Button("Log In") {
                    // login logic comes later
                }
                .buttonStyle(
                    PrimaryButtonStyle(
                        backgroundColor: Color.bgBrown,
                        textColor: .white
                    )
                )
                .padding(.top, 24)
                
                HStack(spacing: 4) {
                    Text("Don't have an account?")
                    NavigationLink {
                        RegisterView()
                    } label: {
                        Text("Sign Up")
                            .font(.custom("Poppins-Bold", size: 15))
                    }
                }
                .font(.custom("Poppins-Regular", size: 15))
                .foregroundStyle(Color.bgBrown)
            }
            .padding(.horizontal, 20)
            .padding(.top, 8)
        }
        .scrollBounceBehavior(.basedOnSize)
        .background(Color.bgPink.ignoresSafeArea())
    }
}

#Preview {
    NavigationStack {
        LoginView()
    }
}
