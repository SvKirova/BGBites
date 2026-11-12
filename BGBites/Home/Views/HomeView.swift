import SwiftUI

struct HomeView: View {
    
    // My initial construction of the view with sample data
    private struct Recipe: Identifiable {
        let id = UUID()
        let name: String
        let category: String
        let time: String
        let image: String
    }

    private let categories = ["All", "Soups", "Salads", "Main Dishes", "Desserts"]

    private let popular = [
        Recipe(name: "Tarator", category: "Soup", time: "15 min", image: "tarator"),
        Recipe(name: "Shopska salad", category: "Salad", time: "10 min", image: "shopska"),
        Recipe(name: "Moussaka", category: "Main dishes", time: "40 min", image: "moussaka")
    ]

    @State private var selectedCategory = "All"
    @State private var selectedTab = 0

    var body: some View {
        ZStack(alignment: .bottom) {
            Color.bgPink.ignoresSafeArea()

            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 0) {

                    // Header
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Good morning, Pavel")
                                .font(.custom("Poppins-Regular",size: 15))
                            Text("Let's cook!")
                                .font(.custom("VampiroOne-Regular", size: 34))
                        }
                        .foregroundColor(.bgBrown)

                        Spacer()

                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .background(Circle().fill(.white))
                            .clipShape(Circle())
                            .shadow(color: .black.opacity(0.1), radius: 4, y: 2)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)

                    // Recipe of the day
                    Text("Recipe of the day")
                        .font(.custom("Poppins-Medium", size: 20))
                        .foregroundColor(.bgBrown)
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                        .padding(.bottom, 10)

                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 24).fill(.bgBlush)

                        VStack(alignment: .leading, spacing: 8) {
                            Text("BREAKFAST")
                                .font(.custom("Poppins-SemiBold", size: 12))
                                .foregroundColor(.white)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 5)
                                .background(Capsule().fill(.bgBrown))

                            Text("Banitsa")
                                .font(.custom("Poppins-SemiBold", size: 20))

                            HStack(spacing: 6) {
                                Image(systemName: "clock")
                                Text("1 h 15 min  ·  Easy")
                            }
                            .font(.custom("Poppins-Regular", size: 14))
                        }
                        .foregroundColor(.bgBrown)
                        .padding(.leading, 20)
                        .padding(.top, 50)

                        HStack {
                            Spacer()
                            Image("banitsa")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 210)
                                .offset(x: 10, y: -4)
                        }
                    }
                    .frame(height: 196)
                    .clipShape(RoundedRectangle(cornerRadius: 24))
                    .shadow(color: .black.opacity(0.2), radius: 8, y: 4)
                    .padding(.horizontal, 20)

                    // Category chips
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(categories, id: \.self) { category in
                                Button {
                                    selectedCategory = category
                                } label: {
                                    Text(category)
                                        .font(category == selectedCategory ? .custom("Poppins-SemiBold", size: 16) : .custom("Poppins-Regular", size: 16))
                                        .foregroundColor(category == selectedCategory ? Color.white : .bgBrown)
                                        .padding(.horizontal, 17)
                                        .padding(.vertical, 8)
                                        .background(
                                            Capsule().fill(category == selectedCategory ? .bgBrown : Color.white)
                                        )
                                }
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                    .padding(.top, 36)

                    // Popular recipes
                    HStack {
                        Text("Popular recipes")
                            .font(.custom("Poppins-SemiBold", size: 20))
                        Spacer()
                        Button("Explore all") {}
                            .font(.custom("Poppins-SemiBold", size: 15))
                    }
                    .foregroundColor(.bgBrown)
                    .padding(.horizontal, 20)
                    .padding(.top, 28)
                    .padding(.bottom, 16)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(popular) { recipe in
                                VStack(spacing: 0) {
                                    ZStack {
                                        Color(red: 0.88, green: 0.75, blue: 0.80)
                                        Image(recipe.image)
                                            .resizable()
                                            .scaledToFit()
                                            .padding(.horizontal, 8)
                                    }
                                    .frame(width: 160, height: 156)
                                    .clipped()

                                    VStack(alignment: .leading, spacing: 2) {
                                        Text(recipe.name)
                                            .font(.system(size: 16, weight: .medium, design: .rounded))
                                        Text("\(recipe.category) · \(recipe.time)")
                                            .font(.system(size: 14, design: .rounded))
                                    }
                                    .foregroundColor(.bgBrown)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(10)
                                    .background(Color.white)
                                }
                                .frame(width: 160)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .shadow(color: .black.opacity(0.15), radius: 6, y: 4)
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.bottom, 16)
                    }
                }
                .padding(.bottom, 120)
            }

            // Tab bar - I need to move it into a separate file
            HStack {
                ForEach(0..<4, id: \.self) { index in
                    Button {
                        selectedTab = index
                    } label: {
                        Image(systemName: ["house", "book", "bookmark", "person"][index])
                            .font(.system(size: 26))
                            .foregroundColor(.bgBrown)
                            .frame(maxWidth: .infinity)
                            .frame(height: 52)
                            .background(
                                Capsule().fill(Color.black.opacity(selectedTab == index ? 0.07 : 0))
                            )
                    }
                }
            }
            .padding(6)
            .background(
                Capsule()
                    .fill(Color.white)
                    .shadow(color: .black.opacity(0.2), radius: 8, y: 4)
            )
            .padding(.horizontal, 20)
            .padding(.bottom, 8)
        }
    }
}

#Preview {
    HomeView()
}
