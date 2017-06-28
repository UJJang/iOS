//
//  ValueResultViewController.swift
//  SwiftTutorial_20170627
//
//  Created by UKJIN_JANG on 2017. 6. 28..
//  Copyright © 2017년 UKJIN_JANG. All rights reserved.
//

import UIKit

class ValueResultViewController: UIViewController {

    @IBOutlet var labelEmail: UILabel!
    
    @IBOutlet var labelUpdate: UILabel!
    
    @IBOutlet var labelInterval: UILabel!
    
    // 값을 미리 갖고 있어야해서, 변수 setting.
    var email:String = ""
    var update:Bool = false
    var interval:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 화면이 로딩된 직 후 처리할 구문
        
        labelEmail.text = email
        labelUpdate.text = update == true ? "Updated" : "Not Update"
        labelInterval.text = "\(Int(interval))분"
    }

}
