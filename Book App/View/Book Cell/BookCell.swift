//
//  BookCell.swift
//  Book App
//
//  Created by Ndriqim Lahu on 5/26/21.
//  Copyright © 2021 Ndriqim Lahu. All rights reserved.
//

import UIKit

protocol BookCellProtocol {
    func deleteBook(bookObj: BookObject)
    func updateBook(bookObj: BookObject)
}

class BookCell: UITableViewCell {

    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pagecountLabel: UILabel!
    @IBOutlet weak var excerptLabel: UILabel!
    @IBOutlet weak var publishdateLabel: UILabel!
    
    var bookObj: BookObject?
    var delegate: BookCellProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func updateButton(_ sender: Any) {
        delegate?.updateBook(bookObj: bookObj!)
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        delegate?.deleteBook(bookObj: bookObj!)
    }
}
