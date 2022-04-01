//
//  ContentView.swift
//  Cookcademy
//
//  Created by Kyle-Joshua Corlett on 30/3/2022.
//

import SwiftUI

struct RecipesListView: View {
    @StateObject var recipeData = RecipesData()
    var body: some View {
        List {
            ForEach(recipeData.recipes) { recipe in
                Text(recipe.mainInformation.name)
            }
        }
        .navigationTitle("All Recipes")
    }
}

extension RecipesListView {
    var recipes: [Recipe] {
        recipeData.recipes
    }
    
    var navigationTitle: String {
        "All Recipes"
    }
}

struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecipesListView()
        }
    }
}
