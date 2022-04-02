//
//  RecipeCategoryGridView.swift
//  Cookcademy
//
//  Created by Kyle-Joshua Corlett on 3/4/2022.
//

import SwiftUI
private var RecipeData = RecipesData()

struct RecipeCategoryGridView: View {
    var body: some View {
        NavigationView{
            ScrollView {
                let columns = [GridItem(), GridItem()]
                LazyVGrid(columns: columns, content: {
                ForEach(MainInformation.Category.allCases,
                        id: \.self) { category in
                    CategoryView(category: category)
                    }
                })
            }
            .navigationTitle("Categories")
        }
    }
}

struct CategoryView: View {
    let category: MainInformation.Category
    
    var body: some View {
        ZStack {
            Image(category.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.35)
            Text(category.rawValue)
                .font(.title)
        }
    }
}

struct RecipeCategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCategoryGridView()
    }
}
