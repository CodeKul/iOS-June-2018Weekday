//
//  ViewController.swift
//  WebViewDemo
//
//  Created by Varun on 22/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var myWebView: WKWebView!
    @IBOutlet var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "http://www.codekul.com")
        let req = URLRequest(url: url!)
        myWebView.load(req)
        
        myWebView.addObserver(self, forKeyPath: "estimatedProgress", options: .new, context: nil)
        
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
        if keyPath == "estimatedProgress" {
            progressView.progress = Float(myWebView.estimatedProgress)
            
            if progressView.progress == 1 {
                progressView.isHidden = true
            }
            else {
                progressView.isHidden = false
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

