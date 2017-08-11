//
//  ViewController.swift
//  Week1Assessment - (HABIB)
//
//  Created by Habib Zahrrin Chang Fard on 11/08/2017.
//  Copyright © 2017 Habib Zahrrin Chang Fard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    var num1 : Int = 0
    var num2 : Int = 0
    var resultadd : Int = 0
    var resultMinus : Int = 0
    var resultMul : Int = 0
    var resutlDiv : Int = 0
    
    @IBOutlet weak var num1Text: UITextField!
    
    @IBOutlet weak var num2Text: UITextField!
    
    
    @IBAction func ButtonCalculate(_ sender: Any) {
        
        num1 = Int(num1Text.text!)!
        num2 = Int(num2Text.text!)!
        
        resultadd = num1 + num2

        
    }

    
    @IBAction func buttonMinus(_ sender: Any) {
        
        num1 = Int(num1Text.text!)!
        num2 = Int(num2Text.text!)!
        
        resultadd = num1 - num2
    }
    
    @IBAction func BUttonDivide(_ sender: Any) {
        num1 = Int(num1Text.text!)!
        num2 = Int(num2Text.text!)!
        
        resultadd = num1 / num2
        
    }
    
    
    @IBAction func buttonTimes(_ sender: Any) {
        num1 = Int(num1Text.text!)!
        num2 = Int(num2Text.text!)!
        
        resultadd = num1 * num2
        
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

