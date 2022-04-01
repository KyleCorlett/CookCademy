//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Kyle-Joshua Corlett on 1/4/2022.
//

import Foundation

class RecipesData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
