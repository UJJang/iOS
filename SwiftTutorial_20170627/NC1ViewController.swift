//
//  NC1ViewController.swift
//  SwiftTutorial_20170627
//
//  Created by UKJIN_JANG on 2017. 6. 27..
//  Copyright © 2017년 UKJIN_JANG. All rights reserved.
//

import UIKit

class NC1ViewController: UIViewController {

    @IBAction func moveNext(_ sender: Any) {
        let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC")
        self.navigationController?.pushViewController(uvc!, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
