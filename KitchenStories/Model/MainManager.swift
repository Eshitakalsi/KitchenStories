//
//  MainManager.swift
//  KitchenStories
//
//  Created by Eshita Kalsi on 07/06/20.
//  Copyright © 2020 Eshita Kalsi. All rights reserved.
//

import Foundation

struct MainManager {
    let recipeURL = "https://api.edamam.com/search?app_id=9d82a327&app_key=ca94feede2037062cf633cfcce07ed10"
    
    
    func fetchRecipe(recipeName: String){
        let urlString = "\(recipeURL)&q=\(recipeName)"
        print(urlString)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
