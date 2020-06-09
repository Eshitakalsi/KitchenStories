//
//  MainManager.swift
//  KitchenStories
//
//  Created by Eshita Kalsi on 07/06/20.
//  Copyright © 2020 Eshita Kalsi. All rights reserved.
//

import Foundation

struct RecipeManager {
    let recipeURL = "https://api.edamam.com/search?app_id=9d82a327&app_key=ca94feede2037062cf633cfcce07ed10"
    
    
    func fetchRecipe(recipeName: String){
        
        let urlRecipe = recipeName.replacingOccurrences(of: " ", with: "%20")
        let urlString = "\(recipeURL)&q=\(urlRecipe)"
        performRequest(urlString: urlString)
        
    }
    func performRequest(urlString: String){
        
        if let url = URL(string: urlString){
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                }
                if let safeData = data {
                    if let imageString = self.parseJSON(recipeData: safeData) {
                
                    }
                    
                    
//                let dataString = String(data: safeData, encoding: .utf8)
//                    print(dataString!)
                }
            }
            
            task.resume()
            
            
        }
        
    }
    
    func parseJSON(recipeData: Data) -> String? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(RecipeData.self, from: recipeData)
            
            let imageURL = decodedData.hits[0].recipe.image
            return imageURL
        } catch {
            print(error)
            return nil
        }
        
        
    }
    

    
    
    
    
    
    
    
    
}
