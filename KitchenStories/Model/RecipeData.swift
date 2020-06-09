//
//  RecipeData.swift
//  KitchenStories
//
//  Created by Eshita Kalsi on 08/06/20.
//  Copyright © 2020 Eshita Kalsi. All rights reserved.
//

import Foundation

struct RecipeData: Codable {
    let hits:  [Hits]
}

struct Hits: Codable {
    let recipe: Recipe
}

struct Recipe: Codable {
    let label: String
    let image: String
}
