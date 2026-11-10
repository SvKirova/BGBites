import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.bgPink.ignoresSafeArea()

                VStack(spacing: 0) {

                    // Title + subtitle
                    VStack(spacing: 6) {
                        Text("BG Bites")
                            .font(.custom("VampiroOne-Regular", size: 34))
                        Text("Discover the taste of Bulgaria")
                            .font(.custom("Poppins-Medium", size: 15))
                            .tracking(1)
                    }
                    .foregroundStyle(.bgBrown)
                    .padding(.top, 40)

                    // Photo
                    Color.clear
                        .frame(height: 278)
                        .overlay(
                            Image("welcome-img")
                                .resizable()
                                .scaledToFill()
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 24))
                        .shadow(color: .black.opacity(0.25), radius: 8, y: 4)
                        .padding(.horizontal, 48)
                        .padding(.top, 40)

                    // Text under the photo
                    Text("Discover traditional Bulgarian recipes and find your next favourite dish.")
                        .font(.custom("Poppins-Medium", size: 17))
                        .tracking(1)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundStyle(.bgBrown)
                        .padding(.horizontal, 60)
                        .padding(.top, 24)
                        .padding(.bottom, 24)

                    Spacer()

                    // Buttons
                    VStack(spacing: 22) {
                        NavigationLink {
                            LoginView()
                        } label: {
                            Text("Log In")
                        }
                        .buttonStyle(
                            PrimaryButtonStyle(
                                backgroundColor: .bgBrown,
                                textColor: .white
                            )
                        )

                        NavigationLink {
                            RegisterView()
                        } label: {
                            Text("Create Account")
                        }
                        .buttonStyle(
                            PrimaryButtonStyle(
                                backgroundColor: .white,
                                textColor: .bgBrown,
                                borderColor: .bgBrown
                            )
                        )
                    }
                    .padding(.horizontal, 30)
                    .padding(.bottom, 130)
                }
            }
        }
        .tint(.bgBrown)
    }
}

#Preview {
    WelcomeView()
}
