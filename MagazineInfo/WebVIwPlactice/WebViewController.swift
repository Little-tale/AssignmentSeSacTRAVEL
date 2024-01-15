//
//  WebViewController.swift
//  MagazineInfo
//
//  Created by Jae hyung Kim on 1/15/24.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    @IBOutlet var webView: WKWebView!
    var tempLink = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // <#T##request: URLRequest##URLRequest#>
        
        if let url = URL(string: tempLink) {
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest)
        }
      
    }

}
