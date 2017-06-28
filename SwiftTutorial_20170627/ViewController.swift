//
//  ViewController.swift
//  SwiftTutorial_20170627
//
//  Created by UKJIN_JANG on 2017. 6. 27..
//  Copyright © 2017년 UKJIN_JANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController { // ViewController 클래스, UIViewController를 상속받은 클래스.

    @IBOutlet weak var uiTitle: UILabel!    // optional !
    
    
    @IBAction func sayHello(_ sender: UIButton) {   // 버튼이 눌리면 sayHello가 호출
        uiTitle.text = "Hello UJJANG! Welcome ~*"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

