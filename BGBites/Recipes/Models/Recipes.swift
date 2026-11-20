import Foundation

enum RecipeCategory: String, CaseIterable {
    case soups = "Soups"
    case salads = "Salads"
    case mainDishes = "Main Dishes"
    case desserts = "Desserts"

    var badge: String {
        switch self {
        case .soups: "SOUP"
        case .salads: "SALAD"
        case .mainDishes: "MAIN DISH"
        case .desserts: "DESSERT"
        }
    }
}

struct Ingredient: Identifiable {
    let id = UUID()
    let name: String
    let amount: String
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let category: RecipeCategory
    let time: String
    let difficulty: String
    let image: String
    var servings: Int = 4
    var ingredients: [Ingredient] = []
    var steps: [String] = []
    var tip: String? = nil
}
