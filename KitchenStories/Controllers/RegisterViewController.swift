//
//  ViewController.swift
//  KitchenStories
//
//  Created by Eshita Kalsi on 06/06/20.
//  Copyright © 2020 Eshita Kalsi. All rights reserved.
//

import UIKit
import Firebase



class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func registerPressed(_ sender: UIButton) {
        
        //creating a new user
        if let email = emailTextField.text, let password = passwordTextField.text {
            
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: "registerToMain", sender: self)
                    //sender: origin of segue. Register attatched to Main.
                }
              
            }
        }
        
        
        
        
    }
    

}

