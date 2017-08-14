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
        
        guard let numOne = Double(num1Text.text!) else {return}
        guard let numTwo = Double(num2Text.text!) else {return}
        num1 = numOne
        num2 = numTwo

        resultadd = num1 + num2
        showResult.text = String(resultadd)
        is999(result999 : resultadd)
        isDiv9(resultDiv9: resultadd)
        other(result: resultadd)
        
        
    }

    
    @IBAction func buttonMinus(_ sender: Any) {
        
        guard let numOne = Double(num1Text.text!) else {return}
        guard let numTwo = Double(num2Text.text!) else {return}
        num1 = numOne
        num2 = numTwo
        resultMinus = num1 - num2
        showResult.text = String(resultMinus)
        is999(result999 : resultMinus)
        isDiv9(resultDiv9: resultMinus)
        other(result: resultMinus)
        
    }
    
    @IBAction func BUttonDivide(_ sender: Any) {
        guard let numOne = Double(num1Text.text!) else {return}
        guard let numTwo = Double(num2Text.text!) else {return}
        num1 = numOne
        num2 = numTwo
        resultDiv = num1 / num2
        showResult.text = String(resultDiv)
        is999(result999 : resultDiv)
        isDiv9(resultDiv9: resultDiv)
        other(result: resultDiv)
        

    }
    
    @IBAction func buttonTimes(_ sender: Any) {
        guard let numOne = Double(num1Text.text!) else {return}
        guard let numTwo = Double(num2Text.text!) else {return}
        num1 = numOne
        num2 = numTwo
        resultMul = num1 * num2
        showResult.text = String(resultMul)
        is999(result999 : resultMul)
        isDiv9(resultDiv9: resultMul)
        other(result: resultMul)

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
            self.num1Text.text = ""
            self.num2Text.text = ""
            self.showResult.text = ""
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
    func other (result : Double){
        if Int(result) != 999 && Int(result) % 9 != 0 {
            print(result)
            self.num1Text.text = ""
            self.num2Text.text = ""
            self.showResult.text = ""
        }
    }
    
}

