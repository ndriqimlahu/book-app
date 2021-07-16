//
//  BookDetailsViewController.swift
//  Book App
//
//  Created by Ndriqim Lahu on 3/28/21.
//  Copyright © 2021 Ndriqim Lahu. All rights reserved.
//

import ShimmerSwift
import UIKit

class BookDetailsViewController: UIViewController {

    @IBOutlet weak var bookPicture: UIImageView!
    @IBOutlet weak var bookName: UILabel!
    @IBOutlet weak var bookEdition: UILabel!
    @IBOutlet weak var bookAuthor: UILabel!
    @IBOutlet weak var bookPublisher: UILabel!
    @IBOutlet weak var bookLanguage: UILabel!
    @IBOutlet weak var bookPages: UILabel!
    @IBOutlet weak var bookPrice: UILabel!
    @IBOutlet weak var bookBuyNow: UIButton!
    
    var bookObj: Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bookPicture.image = UIImage(named: bookObj?.picture ?? "")
        bookName.text = bookObj?.name
        bookEdition.text = bookObj?.edition
        bookAuthor.text = bookObj?.author
        bookPublisher.text = bookObj?.publisher
        bookLanguage.text = bookObj?.language
        bookPages.text = bookObj?.pages
        bookPrice.text = bookObj?.price
        
        let shimmerView = ShimmeringView(frame: CGRect(x: 56, y: 655, width: 306, height: 50))
        view.addSubview(shimmerView)
        shimmerView.contentView = bookBuyNow
        shimmerView.isShimmering = true
    }
}
