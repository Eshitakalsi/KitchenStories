//
//  LoginViewController.swift
//  KitchenStories
//
//  Created by Eshita Kalsi on 06/06/20.
//  Copyright © 2020 Eshita Kalsi. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func loginPressed(_ sender: UIButton) {
        
        
        if let email = emailTextField.text , let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                
                if let e = error{
                    print(e)
                } else {
                    self.performSegue(withIdentifier: "loginToMain", sender: self)
                }
                
                
            }
            
        }
    }
}
