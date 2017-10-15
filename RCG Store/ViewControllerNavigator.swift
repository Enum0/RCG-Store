//
//  ViewControllerNavigator.swift
//  RCG Store
//
//  Created by Ilya on 14.10.17.
//  Copyright © 2017 RCG. All rights reserved.
//

import UIKit

class ViewControllerNavigator: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var favoriteAppButton: UIButton!
    @IBOutlet weak var favoriteAppLabel: UILabel!
    
    
    var name = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let x = UserDefaults.standard.value(forKey: "favoriteApp") as? String
        if x != nil {
            favoriteAppLabel.isHidden = false
            favoriteAppButton.isHidden = false
            favoriteAppButton.setTitle(x, for: .normal)
        } else {
            favoriteAppLabel.isHidden = true
            favoriteAppButton.isHidden = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showCurrentApp(_ sender: Any) {
        if textField.text != "" {
            name = textField.text!
            performSegue(withIdentifier: "screenWV", sender: self)
            
            UserDefaults.standard.set(name, forKey: "favoriteApp")
            debugPrint(UserDefaults.standard.value(forKey: "favoriteApp") as Any)
            
        }
    }
    
    @IBAction func showAllApps(_ sender: Any) {
        name = ""
        performSegue(withIdentifier: "screenWV", sender: self)
    }
    
    @IBAction func showFavoriteApp(_ sender: Any) {
        name = favoriteAppButton.currentTitle!
        performSegue(withIdentifier: "screenWV", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondController = segue.destination as! ViewController
        secondController.passedURL = "https://app.rcg.agency/" + name
        
        debugPrint(secondController.passedURL)
    }

}
