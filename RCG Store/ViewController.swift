//
//  ViewController.swift
//  RCG Store
//
//  Created by Ilya on 03.10.17.
//  Copyright © 2017 RCG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let myURL = URL(string: "https://app.rcg.agency/")
        let myURLrequest = URLRequest(url: myURL!)
        webView.loadRequest(myURLrequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

