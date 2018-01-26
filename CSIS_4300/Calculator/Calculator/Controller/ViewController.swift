//
//  ViewController.swift
//  Calculator
//
//  Created by Zach Christensen on 1/13/18.
//  Copyright © 2018 zach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultsLabel: UILabel!
    var calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculator = Calculator()
        resultsLabel.text = ("\(calculator.result)")
        
    }
    
    @IBAction func piPressed(_ sender: UIButton) {
        calculator.piIsPressed()
        resultsLabel.text = ("\(calculator.currentNumber)")
    }
    
    
    @IBAction func NumberPressed(_ sender: UIButton) {
        if sender.titleLabel!.text! == "." {
            calculator.setDecimalTrue()
        } else {
            calculator.setCurrentNumber(currentNumber: Double(sender.titleLabel!.text!)!)
        }
        resultsLabel.text = ("\(calculator.currentNumber)")
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        calculator.operationFunc()
        resultsLabel.text = ("\(calculator.result)")
        calculator.setCurrentOp(currentOp: sender.titleLabel!.text! as String)
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        calculator.clear()
        resultsLabel.text = ("\(calculator.result)")
    }
}

