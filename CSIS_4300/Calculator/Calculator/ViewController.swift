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
    
    var result = Double()
    var currentNumber = Double()
    var currentOp = String()
    let pi = Double.pi
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentOp = "="
        resultsLabel.text = ("\(result)")
    }
    
    @IBAction func piPressed(_ sender: UIButton) {
        currentNumber = pi
        resultsLabel.text = ("\(currentNumber)")
    }
    
    
    @IBAction func NumberPressed(_ sender: UIButton) {
        currentNumber = currentNumber * 10 + Double(sender.titleLabel!.text!)!
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
        case "cos":
            result = cos(currentNumber)
        case "sin":
            result = sin(currentNumber)
        case "sqrt":
            result = sqrt(currentNumber)
        case "%":
            result = result * 0.01
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

