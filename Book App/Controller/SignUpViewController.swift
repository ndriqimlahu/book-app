//
//  SignUpViewController.swift
//  Book App
//
//  Created by Ndriqim Lahu on 3/27/21.
//  Copyright © 2021 Ndriqim Lahu. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
