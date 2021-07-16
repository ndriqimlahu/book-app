//
//  BookWebViewController.swift
//  Book App
//
//  Created by Ndriqim Lahu on 5/2/21.
//  Copyright © 2021 Ndriqim Lahu. All rights reserved.
//

import UIKit
import WebKit

class BookWebViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var loaderView: UIView!
    @IBOutlet weak var loaderSpinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupWebView()
        loadWebView(urlString: "https://www.goodreads.com")
    }
    
    func setupWebView() {
        webView.uiDelegate = self
        webView.navigationDelegate = self
    }
    
    func loadWebView(urlString: String) {
        let url = URL(string: urlString)
        let urlRequest = URLRequest(url: url!)
        webView.load(urlRequest)
        showLoader()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        hideLoader()
    }
    
    func showLoader() {
        loaderView.isHidden = false
        loaderSpinner.startAnimating()
    }
    
    func hideLoader() {
        loaderView.isHidden = true
        loaderSpinner.stopAnimating()
    }
}
