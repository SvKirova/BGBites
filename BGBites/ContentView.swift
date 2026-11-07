import SwiftUI

extension Color {
    static let bgPink  = Color(red: 250/255, green: 230/255, blue: 236/255)
    static let bgBrown = Color(red: 104/255, green: 71/255, blue: 53/255)
}

struct ContentView: View {
    var body: some View {
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
                .foregroundStyle(Color.bgBrown)
                .padding(.top, 40)

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
                    .foregroundStyle(Color.bgBrown)
                    .padding(.horizontal, 60)
                    .padding(.top, 24)
                    .padding(.bottom, 24)

                Spacer()

                // Buttons
                VStack(spacing: 22) {
                    Button {
                    } label: {
                        Text("Log In")
                            .font(.custom("Poppins-Medium", size: 20))
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 62)
                            .background(Color.bgBrown, in: RoundedRectangle(cornerRadius: 20))
                            .shadow(color: .black.opacity(0.25), radius: 4, y: 3)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Create Account")
                            .font(.custom("Poppins-Medium", size: 20))
                            .foregroundStyle(Color.bgBrown)
                            .frame(maxWidth: .infinity)
                            .frame(height: 62)
                            .background {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.white)
                                    .shadow(color: .black.opacity(0.15), radius: 4, y: 3)
                            }
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.bgBrown, lineWidth: 1)
                            )
                    }
                }
                .padding(.horizontal, 30)
                .padding(.bottom, 130)
            }
        }
    }
}

#Preview {
    ContentView()
}
