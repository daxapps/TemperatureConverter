//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Jason Crawford on 7/15/16.
//  Copyright © 2016 Dax Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempEntry: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func convertClicked(_ sender: AnyObject) {
        
        if let result = tempEntry.text {
            
            if (result == "")  {
                return
            } else {
                if let num = Double(result) {
                    let output = num * (9/5) + 32
                    resultLabel.text = String(output)
                }
            }
        }
        
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

