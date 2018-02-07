//: Playground - noun: a place where people can play

import Foundation


func evString(theString: String) -> Array<String> {
    var a = Array<String>()
    var currentString = ""
    for i in 0..<theString.count {
        let index = theString.index(theString.startIndex, offsetBy: i)
        let s = theString[index]
        if s == "+" || s == "-" || s == "*" || s == "/" {
            a.append(currentString)
            a.append(String(s))
            currentString = ""
        } else {
            currentString += String(s)
        }
    }
    a.append(currentString)
    return a
}

func arrayToAnswer(theArray: Array<String>)->Array<String> {
    var resultArray = theArray
    for (index, value) in resultArray.enumerated() {
        if value == "*" {
            if let firstNum:Double = Double(resultArray[index-1]) {
                if let secondNum:Double = Double(resultArray[index+1]) {
                    let result = firstNum * secondNum
                    resultArray[index-1...index+1] = ["\(result)"]
                    break
                }
            }
        }
    }
    for (index, value) in resultArray.enumerated() {
        if value == "/" {
            if let firstNum:Double = Double(resultArray[index-1]) {
                if let secondNum:Double = Double(resultArray[index+1]) {
                    let result = firstNum / secondNum
                    resultArray[index-1...index+1] = ["\(result)"]
                    break
                }
            }
        }
    }
    for char in resultArray {
        if char == "*" || char == "/" {
            resultArray = arrayToAnswer(theArray: resultArray)
        }
    }
    for (index, value) in resultArray.enumerated() {
        if value == "-" {
            if let firstNum:Double = Double(resultArray[index-1]) {
                if let secondNum:Double = Double(resultArray[index+1]) {
                    let result = firstNum - secondNum
                    resultArray[index-1...index+1] = ["\(result)"]
                    break
                }
            }
        }
    }
    for char in resultArray {
        if char == "-" {
            resultArray = arrayToAnswer(theArray: resultArray)
        }
    }
    for (index, value) in resultArray.enumerated() {
        if value == "+" {
            if let firstNum:Double = Double(resultArray[index-1]) {
                if let secondNum:Double = Double(resultArray[index+1]) {
                    let result = firstNum + secondNum
                    resultArray[index-1...index+1] = ["\(result)"]
                    break
                }
            }
        }
    }
    for char in resultArray {
        if char == "+" {
            resultArray = arrayToAnswer(theArray: resultArray)
        }
    }
   
    return resultArray
}

let problem = evString(theString: "1533.2+26.7173-1.4964+5715.99+1.92565")
let solution = arrayToAnswer(theArray: problem)
print("Equation: \(problem)")
print("Result: \(solution)")



