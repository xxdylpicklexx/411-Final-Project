//
//  ViewController.swift
//  Clicker
//
//  Created by csuftitan on 5/8/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Code for anything on home page
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func buttonPress(_ sender: Any) {
        let storyboard = self.storyboard?.instantiateViewController(withIdentifier: "firstViewController") as! firstViewController
        self.navigationController?.pushViewController(storyboard, animated: true)
    }
    
    
    
}

