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
    var passedURL = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        let myURL = URL(string: passedURL)
        if myURL != nil {
            let myURLrequest = URLRequest(url: myURL!)
            webView.loadRequest(myURLrequest)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backButton(_ sender: Any) {
    performSegue(withIdentifier: "backSegue", sender: nil)
    }

}

