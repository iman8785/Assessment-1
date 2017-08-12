//
//  secondViewController.swift
//  Week1Assessment - (HABIB)
//
//  Created by Habib Zahrrin Chang Fard on 12/08/2017.
//  Copyright © 2017 Habib Zahrrin Chang Fard. All rights reserved.
//

import UIKit

class secondViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var webText: UITextField!
    
    @IBAction func webButton(_ sender: Any) {
        
        if let input = webText.text {
            load(with: input)
        }

        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.delegate = self
        load(with: "https://www.google.com")
    }
    
    func load(with string : String){
        
        let urlString = string
        
        guard let url = URL(string: urlString)
            else {
                print("Invalid urlString: \(string)")
                return }
        
        let request = URLRequest(url : url)
        
        webView.loadRequest(request)
        
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
