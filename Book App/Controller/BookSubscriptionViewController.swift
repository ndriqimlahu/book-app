//
//  BookSubscriptionViewController.swift
//  Book App
//
//  Created by Ndriqim Lahu on 5/2/21.
//  Copyright © 2021 Ndriqim Lahu. All rights reserved.
//

import UIKit

class BookSubscriptionViewController: UIViewController {

    var name: UITextField!
    var email: UITextField!
    
    @IBOutlet weak var typeContactLabel: UILabel!
    @IBOutlet weak var typeContactImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name = UITextField(frame: CGRect(x: 20, y: 25, width: 375.00, height: 35.00))
        name.placeholder = "Type the Name..."
        name.textColor = UIColor.black
        name.backgroundColor = UIColor.white
        name.borderStyle = UITextField.BorderStyle.line
        self.view.addSubview(name)
        
        email = UITextField(frame: CGRect(x: 20, y: 75, width: 375.00, height: 35.00))
        email.placeholder = "Type the Email..."
        email.textColor = UIColor.black
        email.backgroundColor = UIColor.white
        email.borderStyle = UITextField.BorderStyle.line
        self.view.addSubview(email)
        
        showAlertWithData()
        
        NotificationCenter.default.addObserver(self, selector: #selector(facebook(notification:)), name: .facebook, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(instagram(notification:)), name: .instagram, object: nil)
    }
    
    func showAlertWithData() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(alertWithData))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func alertWithData() {
        let alertController = UIAlertController(title: "The Book Subscription", message: "Name: \(name.text!)" + "\nEmail: \(email.text!)", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func contactUsButton(_ sender: Any) {
        let contactVC = self.storyboard?.instantiateViewController(identifier: "bookContactVC") as! BookContactViewController
        self.navigationController?.pushViewController(contactVC, animated: true)
    }
    
    @objc func facebook(notification: Notification) {
        typeContactLabel.text = "Facebook"
        typeContactImage.image = #imageLiteral(resourceName: "facebook")
    }
    
    @objc func instagram(notification: Notification) {
        typeContactLabel.text = "Instagram"
        typeContactImage.image = #imageLiteral(resourceName: "instagram")
    }
}

extension Notification.Name {
    static let facebook = Notification.Name("Facebook")
    static let instagram = Notification.Name("Instagram")
}
