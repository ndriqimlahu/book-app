//
//  BookApiViewController.swift
//  Book App
//
//  Created by Ndriqim Lahu on 5/26/21.
//  Copyright © 2021 Ndriqim Lahu. All rights reserved.
//

import UIKit
import CoreData
import RealmSwift

class BookApiViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, BookCellProtocol {
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var pagecountTextField: UITextField!
    @IBOutlet weak var excerptTextField: UITextField!
    @IBOutlet weak var publishdateTextField: UITextField!
    @IBOutlet weak var booksTable: UITableView!
    @IBOutlet weak var addBookButton: UIButton!
    
    var booksArray: [BookApi] = []
    var realm = try! Realm()
    var update: Bool = false
    var bookToUpdate: BookObject? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBooksTable()
        getBooks()
    }
    
    func setupBooksTable() {
        booksTable.delegate = self
        booksTable.dataSource = self
        booksTable.register(UINib(nibName: "BookCell", bundle: nil), forCellReuseIdentifier: "BookCell")
    }
    
    func getBooks() {
        BookService.getBooks { (success, books, error) in
            if (success) {
                if (books != nil) {
                    self.booksArray = books ?? []
                    self.booksTable.reloadData()
                    self.saveBooksInCoreData()
                    self.saveBooksInRealm(bookapi: books ?? [])
                }
            } else {
                print("getBooks failure error = \(String(describing: error))")
            }
        }
    }
    
    // Core Data - Save Books
    func saveBooksInCoreData() {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let context = appDelegate?.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Books", in: context!)
    
        for bookObj in booksArray {
            let book = NSManagedObject(entity: entity!, insertInto: context)
            book.setValue(bookObj.id, forKey: "id")
            book.setValue(bookObj.title, forKey: "title")
    
            do {
                try context?.save()
                //print("Books saved succesfully!")
            } catch {
                print("Saving books failed!")
            }
        }
    }
    
    // Core Data - Read Books
    func readBooksInCoreData() {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let context = appDelegate?.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Books")
    
        do {
            let results = try context?.fetch(request)
    
            for book in ((results as? [NSManagedObject])!) {
                let bookObj = BookApi()
    
                bookObj.id = (book.value(forKey: "id") as! Int)
                bookObj.title = (book.value(forKey: "title") as! String)
    
                booksArray.append(bookObj)
            }
        } catch {
            print("Fetching books failed!")
        }
    }
    
    // Core Data - Add Book
    func addBook() {
        let book = BookApi()
        
        book.id = Int(idTextField.text ?? "") ?? 0
        book.title = titleTextField.text ?? ""
    
        BookService.addBook(bookapi: book) { (success, error) in
            if (success) {
            }
        }
    }
    
    // Realm - Save Books
    func saveBooksInRealm(bookapi: [BookApi]) {
        for books in bookapi {
            let bookObj = BookObject()
            bookObj.id = books.id ?? 0
            bookObj.title = books.title ?? ""
            bookObj.pageCount = books.pageCount ?? 0
            bookObj.excerpt = books.excerpt ?? ""
            bookObj.publishDate = books.publishDate ?? ""
            
            try! realm.write {
                realm.add(bookObj)
            }
        }
        booksTable.reloadData()
    }
    
    // Realm - Save Book
    func saveBookInRealm() {
        let id = Int(idTextField.text ?? "") ?? 0
        let title = titleTextField.text ?? ""
        let pageCount = Int(pagecountTextField.text ?? "") ?? 0
        let excerpt = excerptTextField.text ?? ""
        let publishDate = publishdateTextField.text ?? ""
        
        let bookObj = BookObject()
        bookObj.id = id
        bookObj.title = title
        bookObj.pageCount = pageCount
        bookObj.excerpt = excerpt
        bookObj.publishDate = publishDate
        
        try! realm.write {
            realm.add(bookObj)
        }
        
        idTextField.text = ""
        titleTextField.text = ""
        pagecountTextField.text = ""
        excerptTextField.text = ""
        publishdateTextField.text = ""
        
        booksTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return realm.objects(BookObject.self).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell") as! BookCell
        
        let bookObj = realm.objects(BookObject.self)[indexPath.row]
        cell.idLabel.text = "\(bookObj.id)"
        cell.titleLabel.text = "\(bookObj.title)"
        cell.pagecountLabel.text = "\(bookObj.pageCount)"
        cell.excerptLabel.text = "\(bookObj.excerpt)"
        cell.publishdateLabel.text = "\(bookObj.publishDate)"
        
        cell.bookObj = bookObj
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    // Core Data & Realm - Add Book Button Pressed
    @IBAction func addBookButtonPressed(_ sender: Any) {
        if (update) {
            updateBookInRealm(bookToUpdate: bookToUpdate!)
        } else {
            addBook()
            saveBookInRealm()
        }
    }
    
    // Realm - Update Book
    func updateBook(bookObj: BookObject) {
        print("Update Book!")
        
        addBookButton.setTitle("Update Book", for: .normal)
        idTextField.text = "\(bookObj.id)"
        titleTextField.text = "\(bookObj.title)"
        pagecountTextField.text = "\(bookObj.pageCount)"
        excerptTextField.text = "\(bookObj.excerpt)"
        publishdateTextField.text = "\(bookObj.publishDate)"
        
        update = true
        bookToUpdate = bookObj
    }
    
    // Realm - Book To Update
    func updateBookInRealm(bookToUpdate: BookObject){
        let bookToUpdate = realm.objects(BookObject.self).filter("id = \(bookToUpdate.id)").first
        
        try! realm.write{
            bookToUpdate?.id = Int(idTextField.text ?? "") ?? 0
            bookToUpdate?.title = titleTextField.text ?? ""
            bookToUpdate?.pageCount = Int(pagecountTextField.text ?? "") ?? 0
            bookToUpdate?.excerpt = excerptTextField.text ?? ""
            bookToUpdate?.publishDate = publishdateTextField.text ?? ""
        }
        
        booksTable.reloadData()
        idTextField.text = ""
        titleTextField.text = ""
        pagecountTextField.text = ""
        excerptTextField.text = ""
        publishdateTextField.text = ""
        
        update = false
        addBookButton.setTitle("Add Book", for: .normal)
    }
    
    // Realm - Delete Book
    func deleteBook(bookObj: BookObject) {
        print("Delete Book!")
        
        let bookToDelete = realm.objects(BookObject.self).filter("id = \(bookObj.id)").first
        
        try! realm.write {
            realm.delete(bookToDelete!)
        }
        
        booksTable.reloadData()
    }
}
