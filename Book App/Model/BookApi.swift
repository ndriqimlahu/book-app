//
//  BookApi.swift
//  Book App
//
//  Created by Ndriqim Lahu on 5/26/21.
//  Copyright © 2021 Ndriqim Lahu. All rights reserved.
//

import Foundation
import SwiftyJSON

class BookApi: NSObject {
    var id: Int?
    var title: String?
    var pageCount: Int?
    var excerpt: String?
    var publishDate: String?
    
    static func createBooks(json: JSON) -> BookApi? {
        let bookapi = BookApi()
        
        if let id = json["id"].int {
            bookapi.id = id
            if let title = json["title"].string {
                bookapi.title = title
                if let pageCount = json["pageCount"].int {
                    bookapi.pageCount = pageCount
                    if let excerpt = json["excerpt"].string {
                        bookapi.excerpt = excerpt
                        if let publishDate = json["publishDate"].string {
                            bookapi.publishDate = publishDate
                        }
                    }
                }
            }
        }
        
        return bookapi
    }
    
    static func createBooksArray(jsonArray: [JSON]) -> [BookApi]? {
        var bookArray: [BookApi] = []
        
        for jsonObj in jsonArray {
            if let book = BookApi.createBooks(json: jsonObj) {
                bookArray.append(book)
            }
        }
        
        return bookArray
    }
}
