//
//  VT1ViewController.swift
//  SwiftTutorial_20170627
//
//  Created by UKJIN_JANG on 2017. 6. 27..
//  Copyright © 2017년 UKJIN_JANG. All rights reserved.
//

import UIKit

class VT1ViewController: UIViewController {

    
    // 버튼 눌렀을시 뷰 전환 예제.
    @IBAction func moveNext(_ sender: Any) {
        let uvc = self.storyboard!.instantiateViewController(withIdentifier: "SecondVC")
        modalTransitionStyle = .coverVertical // 애니메이션 스타일 지정
        present(uvc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
