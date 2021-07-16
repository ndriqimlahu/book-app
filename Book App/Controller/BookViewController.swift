//
//  BookViewController.swift
//  Book App
//
//  Created by Ndriqim Lahu on 3/27/21.
//  Copyright © 2021 Ndriqim Lahu. All rights reserved.
//

import UIKit

class BookViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var userDefaultsLabel: UILabel!
    @IBOutlet weak var bookTable: UITableView!
    
    var booksArray: [Book] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (UserDefaults.standard.bool(forKey: "firstTimeInApp") == false) {
            userDefaultsLabel.text = "Welcome to the Book App"
            UserDefaults.standard.setValue(true, forKey: "firstTimeInApp")
        } else {
            userDefaultsLabel.text = "Hi again to the Book App"
        }
        
        setupBooksTable()
        createBooks()
    }
    
    func setupBooksTable() {
        bookTable.dataSource = self
        bookTable.delegate = self
        bookTable.register(UINib(nibName: "BooksTableHeaderFooter", bundle: nil), forHeaderFooterViewReuseIdentifier: "BooksTableHeaderFooter")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return booksArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell")
        
        if let bookImageView = cell?.viewWithTag(10) as? UIImageView{
            bookImageView.image = UIImage(named: booksArray[indexPath.row].picture ?? "")
        }
        
        if let nameLabel = cell?.viewWithTag(11) as? UILabel{
            nameLabel.text = booksArray[indexPath.row].name
        }
        
        if let priceLabel = cell?.viewWithTag(12) as? UILabel{
            priceLabel.text = booksArray[indexPath.row].price
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row) selected")
        print("Selected object: \(String(describing: booksArray[indexPath.row].name))")
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let bookDetailsVC = storyboard.instantiateViewController(identifier: "bookDetailsVC") as! BookDetailsViewController
        bookDetailsVC.bookObj = booksArray[indexPath.row]
        
        self.navigationController?.pushViewController(bookDetailsVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = bookTable.dequeueReusableHeaderFooterView(withIdentifier: "BooksTableHeaderFooter") as! BooksTableHeaderFooter
        header.titleLabel.text = "The Programming Books"
        return header
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = bookTable.dequeueReusableHeaderFooterView(withIdentifier: "BooksTableHeaderFooter") as! BooksTableHeaderFooter
        footer.titleLabel.text = "All books are licensed"
        return footer
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50
    }
    
    func createBooks() {
        var book1 = Book()
        book1.picture = "book1"
        book1.name = "Mastering Swift 5"
        book1.edition = "5th edition"
        book1.author = "Jon Hoffman"
        book1.publisher = "Packt Publishing"
        book1.language = "English"
        book1.pages = "370 pages"
        book1.price = "34.99$"
        booksArray.append(book1)
        
        var book2 = Book()
        book2.picture = "book2"
        book2.name = "Laravel: The Ultimate Guide"
        book2.edition = "2nd edition"
        book2.author = "Rufus Stewart"
        book2.publisher = "Independently"
        book2.language = "English"
        book2.pages = "137 pages"
        book2.price = "14.99$"
        booksArray.append(book2)
        
        var book3 = Book()
        book3.picture = "book3"
        book3.name = "Web Programming"
        book3.edition = "Pap/Psc edition"
        book3.author = "John Dean"
        book3.publisher = "Jones & Bartlett Learning"
        book3.language = "English"
        book3.pages = "678 pages"
        book3.price = "73.69$"
        booksArray.append(book3)
        
        var book4 = Book()
        book4.picture = "book4"
        book4.name = "Java for Beginners Guide"
        book4.edition = "Kindle edition"
        book4.author = "Josh Thompsons"
        book4.publisher = "Learning & Publisher"
        book4.language = "English"
        book4.pages = "106 pages"
        book4.price = "13.39$"
        booksArray.append(book4)
        
        var book5 = Book()
        book5.picture = "book5"
        book5.name = "Python Programming"
        book5.edition = "Kindle edition"
        book5.author = "Cal Baron"
        book5.publisher = "Publisher & Learning"
        book5.language = "English"
        book5.pages = "161 pages"
        book5.price = "12.99$"
        booksArray.append(book5)
        
        bookTable.reloadData()
    }
}
