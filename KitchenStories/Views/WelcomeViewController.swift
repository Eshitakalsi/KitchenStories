//
//  WelcomeViewController.swift
//  KitchenStories
//
//  Created by Eshita Kalsi on 06/06/20.
//  Copyright © 2020 Eshita Kalsi. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = "KitchenStories"
    }

}
