//
//  Calculator.swift
//  Calculator
//
//  Created by Zach Christensen on 1/21/18.
//  Copyright © 2018 zach. All rights reserved.
//

import Foundation

class Calculator {
    
    var result : Double
    var currentNumber : Double 
    var currentOp : String
    var isDecimal : Bool
    var decimalPointer : Double
    let pi = Double.pi
    
    init() {
        result = 0.0
        currentNumber = 0.0
        currentOp = "="
        isDecimal = false
        decimalPointer = 0.1
    }
    
    //TODO: remove getters and setters and do it the swift way
    
    
    func setResult(result: Double) {
        self.result = result
    }
    
    func setDecimalTrue() {
        isDecimal = true
    }
    
    func setDecimalFalse() {
        isDecimal = false
    }
    
    func setCurrentNumber (currentNumber: Double) {
        if isDecimal {
            self.currentNumber = self.currentNumber + currentNumber * decimalPointer
            decimalPointer *= 0.10
        } else {
            self.currentNumber = self.currentNumber * 10 + currentNumber
        }
    }
    
    func setCurrentOp(currentOp: String) {
        if currentOp == "=" {
            setResult(result: 0.0)
        }
        self.currentOp = currentOp
    }
    
    func operationFunc() {
        switch currentOp {
        case "=":
            setResult(result: currentNumber)
        case "+":
            setResult(result: result + currentNumber)
        case "-":
            setResult(result: result - currentNumber)
        case "/":
            setResult(result: result / currentNumber)
        case "x":
            setResult(result: result * currentNumber)
        case "cos":
            setResult(result: cos(currentNumber))
        case "sin":
            setResult(result: sin(currentNumber))
        case "sqrt":
            setResult(result: sqrt(currentNumber))
        case "%":
            setResult(result: result * 0.01)
        default:
            print("what did you do?!")
        }
        
        setDecimalFalse()
        currentNumber = 0.0
        
    }
    
    func piIsPressed() {
        currentNumber = pi
    }
    
    func clear() {
        result = 0.0
        currentNumber = 0.0
        currentOp = "="
        isDecimal = false
        decimalPointer = 0.1
    }
     
}
