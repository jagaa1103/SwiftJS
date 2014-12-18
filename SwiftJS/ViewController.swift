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
    
    override func loadView() {
    	println("hehehe")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func userContentController(userContentController: WKUserContentController, didReceiveScriptMessage message: WKScriptMessage){
    }
}

