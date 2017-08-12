//
//  ViewController.swift
//  Week1Assessment - (HABIB)
//
//  Created by Habib Zahrrin Chang Fard on 11/08/2017.
//  Copyright © 2017 Habib Zahrrin Chang Fard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    var num1 : Double = 0
    var num2 : Double = 0
    var resultadd : Double = 0
    var resultMinus : Double = 0
    var resultMul : Double = 0
    var resultDiv : Double = 0
    
    @IBOutlet weak var num1Text: UITextField!
    
    @IBOutlet weak var num2Text: UITextField!
    
    @IBOutlet weak var showResult: UILabel!
    
    @IBAction func ButtonCalculate(_ sender: Any) {
        
        num1 = Double(num1Text.text!)!
        num2 = Double(num2Text.text!)!
        resultadd = num1 + num2
        showResult.text = String(resultadd)
        is999(result999 : resultadd)
        isDiv9(resultDiv9: resultadd)
        otherResult(result: resultadd)
        
        return
    }

    
    @IBAction func buttonMinus(_ sender: Any) {
        
        num1 = Double(num1Text.text!)!
        num2 = Double(num2Text.text!)!
        resultMinus = num1 - num2
        showResult.text = String(resultMinus)
        is999(result999 : resultMinus)
        isDiv9(resultDiv9: resultMinus)
        otherResult(result: resultMinus)
        
    }
    
    @IBAction func BUttonDivide(_ sender: Any) {
        num1 = Double(num1Text.text!)!
        num2 = Double(num2Text.text!)!
        resultDiv = num1 / num2
        showResult.text = String(resultDiv)
        is999(result999 : resultDiv)
        isDiv9(resultDiv9: resultDiv)
        otherResult(result: resultDiv)

    }
    
    @IBAction func buttonTimes(_ sender: Any) {
        num1 = Double(num1Text.text!)!
        num2 = Double(num2Text.text!)!
        resultMul = num1 * num2
        showResult.text = String(resultMul)
        is999(result999 : resultMul)
        isDiv9(resultDiv9: resultMul)
        otherResult(result: resultMul)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func is999 (result999 : Double) {
        if result999 == 999 {
            performSegue(withIdentifier: "go" , sender: self)
        }
    }
    
    func isDiv9 (resultDiv9 : Double) {
        if Int(resultDiv9) %  9 == 0 && resultDiv9 != 999 {
            
            let alert = UIAlertController(title: "GENIUS", message: "", preferredStyle: .alert)
            
            let restartAlert = UIAlertAction(title: "Restart", style: .destructive, handler: { (action) in
                
                self.num1Text.text = ""
                self.num2Text.text = ""
                self.showResult.text = ""
            })
            alert.addAction(restartAlert)
            
            present(alert, animated: true, completion: nil)
        }
        
    }
    func otherResult (result : Double){
        if Int(result) != 999 && Int(result) % 9 != 0 {
            print(result)
        }
    }

}

