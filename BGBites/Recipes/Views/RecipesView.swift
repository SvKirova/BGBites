import SwiftUI

struct RecipesView: View {
    
    private let recipes = [
        Recipe(name: "Tarator", category: .soups, time: "15 min", difficulty: "Easy", image: "banitsa"),
        Recipe(name: "Stuffed peppers", category: .mainDishes, time: "1 h 10 min", difficulty: "Medium", image: "banitsa"),
        Recipe(name: "Banitsa", category: .desserts, time: "1 h 15 min", difficulty: "Easy", image: "banitsa"),
        Recipe(name: "Snezhanka salad", category: .salads, time: "10 min", difficulty: "Easy", image: "banitsa"),
        Recipe(name: "Potato salad", category: .salads, time: "40 min", difficulty: "Easy", image: "banitsa")
    ]
    
    @State private var selectedCategory: RecipeCategory? = nil
    @State private var selectedTab = 1
    
    private var filteredRecipes: [Recipe] {
        guard let selectedCategory else { return recipes }
        return recipes.filter { $0.category == selectedCategory }
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.bgPink.ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                Text("Recipes")
                    .font(.custom("VampiroOne-Regular", size: 34))
                    .foregroundColor(.bgBrown)
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                
                categoryChips
                    .padding(.top, 16)
                
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing: 20) {
                        ForEach(filteredRecipes) { recipe in
                            RecipeCard(recipe: recipe)
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 16)
                    .padding(.bottom, 120)
                }
            }
            
            TabBar(selectedTab: $selectedTab)
        }
    }
    
    private var categoryChips: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                chip(title: "All", isSelected: selectedCategory == nil) {
                    selectedCategory = nil
                }
                ForEach(RecipeCategory.allCases, id: \.self) { category in
                    chip(title: category.rawValue, isSelected: selectedCategory == category) {
                        selectedCategory = category
                    }
                }
            }
            .padding(.horizontal, 20)
        }
    }
    
    private func chip(title: String, isSelected: Bool, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Text(title)
                .font(.custom(isSelected ? "Poppins-SemiBold" : "Poppins-Regular", size: 16))
                .foregroundColor(isSelected ? .white : .bgBrown)
                .padding(.horizontal, 17)
                .padding(.vertical, 8)
                .background(Capsule().fill(isSelected ? Color.bgBrown : Color.white))
        }
    }
}

private struct RecipeCard: View {
    let recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Color.clear
                .frame(height: 120)
                .overlay(
                    Image(recipe.image)
                        .resizable()
                        .scaledToFill()
                )
                .clipped()
            
            VStack(alignment: .leading, spacing: 6) {
                Text(recipe.category.badge)
                    .font(.custom("Poppins-SemiBold", size: 11))
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 4)
                    .background(Capsule().fill(Color.bgBrown))
                
                Text(recipe.name)
                    .font(.custom("Poppins-Medium", size: 18))
                
                HStack(spacing: 5) {
                    Image(systemName: "clock")
                    Text("\(recipe.time)  ·  \(recipe.difficulty)")
                }
                .font(.custom("Poppins-Regular", size: 13))
            }
            .foregroundColor(.bgBrown)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(12)
            .background(Color.white)
        }
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.15), radius: 6, y: 4)
    }
}

#Preview {
    RecipesView()
}
