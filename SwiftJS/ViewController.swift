//
//  ViewController.swift
//  SwiftJS
//
//  Created by Jagaa on 12/18/14.
//  Copyright (c) 2014 Phigolf. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKScriptMessageHandler {
    
    @IBOutlet var containerView:UIView! = nil
    var webView: WKWebView?
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("viewDidLoad is running")
        
        let (theWebView) = buildSwiftly(self)
        self.webView = theWebView?
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func userContentController(userContentController: WKUserContentController, didReceiveScriptMessage
        message: WKScriptMessage){
        
        println("\(message.body)")
        count += 1
        toScript(count)
    }

    
}

