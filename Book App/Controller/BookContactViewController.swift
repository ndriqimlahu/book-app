//
//  BookContactViewController.swift
//  Book App
//
//  Created by Ndriqim Lahu on 5/30/21.
//  Copyright © 2021 Ndriqim Lahu. All rights reserved.
//

import UIKit

class BookContactViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func facebookButton(_ sender: Any) {
        NotificationCenter.default.post(name: .facebook, object: nil)
    }
    
    @IBAction func instagramButton(_ sender: Any) {
        NotificationCenter.default.post(name: .instagram, object: nil)
    }
    
}
