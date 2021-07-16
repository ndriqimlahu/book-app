//
//  BookService.swift
//  Book App
//
//  Created by Ndriqim Lahu on 5/26/21.
//  Copyright © 2021 Ndriqim Lahu. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class BookService: NSObject {
    
    class func getBooks(completionHandler: @escaping(_ success: Bool, _ bookapi: [BookApi]?, _ error: Error?) -> Void) {
        let urlString = "http://fakerestapi.azurewebsites.net/api/v1/Books"
        
        AF.request(urlString, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            switch response.result {
            case .success(let data):
                if let jsonArray = JSON(data).array {
                    if let books = BookApi.createBooksArray(jsonArray: jsonArray) {
                        completionHandler(true, books, nil)
                    }
                }
            case .failure(let error):
                print("getBooks failure error = \(error)")
                completionHandler(false, nil, error)
            }
        }
    }
    
    class func addBook(bookapi: BookApi, completionHandler: @escaping(_ success: Bool, _ error: Error?) -> Void){
        let reqURL = "http://fakerestapi.azurewebsites.net/api/v1/Books"
        
        let parameters: [String: Any] = [
            "id": bookapi.id ?? "",
            "title": bookapi.title ?? ""
        ]
        
        AF.request(reqURL, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            switch response.result{
            case .success(let data):
                print("addBook success data = \(data)")
                completionHandler(true, nil)
            case .failure(let error):
                print("addBook failure error = \(error)")
                completionHandler(false, error)
            }
        }
    }
}
