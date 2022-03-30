//
//  Recipe.swift
//  Cookcademy
//
//  Created by Kyle-Joshua Corlett on 30/3/2022.
//

import Foundation

struct Recipe {
    var mainInformation: MainInformation
    var ingredients: [String]
    var directions: [String]
}

struct MainInformation{
    var name: String
    var description: String
    var author: String
    var category: String //Breakfast, Lunch, Dinner, Dessert
    
    enum Category: String, CaseIterable {
        case breakfast = "Breakfast"
        case lunch = "Lunch"
        case dinner = "Dinner"
        case dessert = "Dessert"
    }
}

struct Ingredient {
    var name: String
    var quantity: Double
    var unit: String //Ounces, Grams, Cups, Tablespoons, Teaspoons, None
    
    enum Unit: String, CaseIterable{
        case oz = "Ounces"
        case g = "Grams"
        case cups = "Cups"
        case tbs = "Tablespoons"
        case tps = "Teaspoons"
        case none = "No units"
    }
}

struct Direction{
    var description: String
    var isOptional: Bool
}
