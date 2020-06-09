//
//  MainViewController.swift
//  KitchenStories
//
//  Created by Eshita Kalsi on 06/06/20.
//  Copyright © 2020 Eshita Kalsi. All rights reserved.
//

import UIKit
import Firebase

class RecipeViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var recipeName: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var ingredientsList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        
        searchTextField.delegate = self
        
        
        
    }
    
    var recipeManager = RecipeManager()

    @IBOutlet weak var searchTextField: UITextField!
    
    
    @IBAction func searchPressed(_ sender: UIButton) {
        if let recipeLabel = searchTextField.text {
            recipeName.text = recipeLabel
        }
        searchTextField.endEditing(true)
    }
    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let recipeLabel = searchTextField.text {
                   recipeName.text = recipeLabel
               }
        searchTextField.endEditing(true)
        return true
    }
    
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""{
            return true
            } else {
            textField.placeholder = "Type Something"
            return false
        }
        
    }
    
    
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if let recipe = searchTextField.text {
            recipeManager.fetchRecipe(recipeName: recipe)
            
        }
        
        
        
        
        
        
        
        
        
        searchTextField.text = ""
    }
    
    
    
    
    
    
    
    @IBAction func logoutPressed(_ sender: UIBarButtonItem) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }
}

extension UIImageView {
    func load(urlString:URL) {
        
    }
}
