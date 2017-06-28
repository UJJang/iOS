//
//  ValueViewController.swift
//  SwiftTutorial_20170627
//
//  Created by UKJIN_JANG on 2017. 6. 28..
//  Copyright © 2017년 UKJIN_JANG. All rights reserved.
//

import UIKit

class ValueViewController: UIViewController {

    // 스토리보드에서 우클릭하여 끌어다가 추가. outlet 추가.
    
    @IBOutlet weak var textFieldEmail: UITextField!
    
    @IBOutlet weak var labelUpdate: UILabel!
    
    @IBOutlet weak var labelInterval: UILabel!
    
    
    // Action이 필요한 UI : 스위치 / 스테퍼
    
    @IBOutlet weak var switchUpdate: UISwitch!
    
    @IBAction func onSwitch(_ sender: Any) {
        let mySwitch = sender as! UISwitch
        if(mySwitch.isOn) {
            labelUpdate.text = "Updated"
        } else {
            labelUpdate.text = "Not Update"
        }
    }
    
    @IBOutlet weak var stepperInterval: UIStepper!
    
    
    @IBAction func onStepper(_ sender: Any) {
        let myStepper = sender as! UIStepper
        labelInterval.text = "\(Int(myStepper.value))분"
        
    }
    
    // Submit 버튼에 대한 액션 추가. rvc = result view controller
    @IBAction func onSubmit(_ sender: Any) {
        if let rvc = self.storyboard?.instantiateViewController(withIdentifier: "ResultVC") as? ValueResultViewController {
            
            rvc.email = textFieldEmail.text!    // forced unwrapping
            rvc.update = switchUpdate.isOn
            rvc.interval = stepperInterval.value
            
            self.present(rvc, animated: true, completion: nil)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
