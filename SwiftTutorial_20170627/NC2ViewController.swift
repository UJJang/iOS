//
//  NC2ViewController.swift
//  SwiftTutorial_20170627
//
//  Created by UKJIN_JANG on 2017. 6. 27..
//  Copyright © 2017년 UKJIN_JANG. All rights reserved.
//

import UIKit

class NC2ViewController: UIViewController {

    @IBAction func wind(_ sender: Any) {
        performSegue(withIdentifier: "ManualSegue", sender: self)
    }
    
    @IBAction func unwindNC2(segue:UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
