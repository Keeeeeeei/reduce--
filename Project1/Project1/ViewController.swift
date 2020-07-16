//
//  ViewController.swift
//  Project1
//
//  Created by Kei on 2020/07/15.
//  Copyright © 2020 Kei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var num3: UITextField!
    @IBOutlet weak var num4: UITextField!
    @IBOutlet weak var num5: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func answer(_ sender: UIButton) {
        
        
        let number1 = Int(num1.text!) ?? 0
        let number2 = Int(num2.text!) ?? 0
        let number3 = Int(num3.text!) ?? 0
        let number4 = Int(num4.text!) ?? 0
        let number5 = Int(num5.text!) ?? 0
        
//        let result = number1 + number2 + number3 + number4 + number5
//
//        label.text = "\(result)"
//
        let nums = [number1,number2,number3,number4,number5]
        
        let total
            = nums.reduce(0, { currentTotal, num in
                let newTotal = currentTotal + num
                return newTotal
            })
         label.text = "\(total)"
    }
    
    
    
}

