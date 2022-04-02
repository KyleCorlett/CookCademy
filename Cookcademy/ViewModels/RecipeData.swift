//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Kyle-Joshua Corlett on 1/4/2022.
//

import Foundation

class RecipeData: ObservableObject {
  @Published var recipes = Recipe.testRecipes
 
    func recipes(for category: MainInformation.Category) -> [Recipe] {
        var filteredRecipes = [Recipe]()
        for recipe in recipes {
            if recipe.mainInformation.category == category {
                filteredRecipes.append(recipe)
            }
        }
        return filteredRecipes
    }
}

class RecipesData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
