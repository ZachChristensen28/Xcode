//
//  ViewController.swift
//  Calculator
//
//  Created by Sight Syndicate on 1/13/18.
//  Copyright © 2018 zach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultsLabel: UILabel!
    
    var result = Float()
    var currentNumber = Float()
    var currentOp = String()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentOp = "="
        resultsLabel.text = ("\(result)")
    }
    
    @IBAction func NumberPressed(_ sender: UIButton) {
        currentNumber = currentNumber * 10 + Float(sender.titleLabel!.text!)!
        resultsLabel.text = ("\(currentNumber)")
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        
        switch currentOp {
        case "=":
            result = currentNumber
        case "+":
            result = result + currentNumber
        case "-":
            result = result - currentNumber
        case "/":
            result = result / currentNumber
        case "*":
            result = result * currentNumber
        default:
            print("what did you do?!")
        }
        
        currentNumber = 0
        resultsLabel.text = ("\(result)")
        
        if(sender.titleLabel!.text == "=") {
            result = 0
        }
        
        currentOp = sender.titleLabel!.text! as String
    }
    @IBAction func clearPressed(_ sender: UIButton) {
        result = 0
        currentNumber = 0
        currentOp = "="
        resultsLabel.text = ("\(result)")
    }
}

