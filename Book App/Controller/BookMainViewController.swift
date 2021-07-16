//
//  BookMainViewController.swift
//  Book App
//
//  Created by Ndriqim Lahu on 5/2/21.
//  Copyright © 2021 Ndriqim Lahu. All rights reserved.
//

import UIKit

class BookMainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var menuShow: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var isMenuOpen = true
    var nameItems = ["BookVC", "BookSubscriptionVC", "BookContactVC", "BookWebVC", "BookMapVC", "BookApiVC"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupItemTable()
        showBookVC()
    }
    
    func setupItemTable() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    @IBAction func menuBtnPressed(_ sender: UIButton) {
        if isMenuOpen {
            showMenu()
            isMenuOpen = false
        } else {
            hideMenu()
            isMenuOpen = true
        }
    }
    
    func showMenu() {
        UIView.animate(withDuration: 0.3) {
            self.menuShow.frame = CGRect(x: 210, y: 160, width: self.view.frame.width/2, height: self.view.frame.height)
            self.view.addSubview(self.menuShow)
        }
    }
    
    func hideMenu() {
        menuShow.frame = CGRect(x: -self.menuShow.frame.width, y: 100, width: self.view.frame.width/2, height: self.view.frame.height)
        self.view.addSubview(menuShow)
    }
    
    func showBookVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "bookVC") as! BookViewController
        self.addChild(viewController)
        mainView.addSubview(viewController.view)
        viewController.view.frame = CGRect(x: 0, y: 0, width: scrollView.frame.width, height: scrollView.frame.height)
        viewController.didMove(toParent: self)
    }
    
    func showBookSubscriptionVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "bookSubscriptionVC") as! BookSubscriptionViewController
        self.addChild(viewController)
        mainView.addSubview(viewController.view)
        viewController.view.frame = CGRect(x: 0, y: 0, width: scrollView.frame.width, height: scrollView.frame.height)
        viewController.didMove(toParent: self)
    }
    
    func showBookContactVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "bookContactVC") as! BookContactViewController
        self.addChild(viewController)
        mainView.addSubview(viewController.view)
        viewController.view.frame = CGRect(x: 0, y: 0, width: scrollView.frame.width, height: scrollView.frame.height)
        viewController.didMove(toParent: self)
    }
    
    func showBookWebVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "bookWebVC") as! BookWebViewController
        self.addChild(viewController)
        mainView.addSubview(viewController.view)
        viewController.view.frame = CGRect(x: 0, y: 0, width: scrollView.frame.width, height: scrollView.frame.height)
        viewController.didMove(toParent: self)
    }
    
    func showBookMapVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "bookMapVC") as! BookMapViewController
        self.addChild(viewController)
        mainView.addSubview(viewController.view)
        viewController.view.frame = CGRect(x: 0, y: 0, width: scrollView.frame.width, height: scrollView.frame.height)
        viewController.didMove(toParent: self)
    }
    
    func showBookApiVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "bookApiVC") as! BookApiViewController
        self.addChild(viewController)
        mainView.addSubview(viewController.view)
        viewController.view.frame = CGRect(x: 0, y: 0, width: scrollView.frame.width, height: scrollView.frame.height)
        viewController.didMove(toParent: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        cell.textLabel?.text = nameItems[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.row == 0) {
            showBookVC()
        }
        else if (indexPath.row == 1) {
            showBookSubscriptionVC()
        }
        else if (indexPath.row == 2) {
            showBookContactVC()
        }
        else if (indexPath.row == 3) {
            showBookWebVC()
        }
        else if (indexPath.row == 4) {
            showBookMapVC()
        }
        else {
            showBookApiVC()
        }
        hideMenu()
    }
}
