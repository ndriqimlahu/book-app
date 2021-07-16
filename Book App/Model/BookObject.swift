//
//  BookObject.swift
//  Book App
//
//  Created by Ndriqim Lahu on 5/30/21.
//  Copyright © 2021 Ndriqim Lahu. All rights reserved.
//

import Foundation
import RealmSwift

class BookObject: Object {
    @objc dynamic var id = 0
    @objc dynamic var title = ""
    @objc dynamic var pageCount = 0
    @objc dynamic var excerpt = ""
    @objc dynamic var publishDate = ""
}
