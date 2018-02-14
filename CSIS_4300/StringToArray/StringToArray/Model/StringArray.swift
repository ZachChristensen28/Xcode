//
//  StringArray.swift
//  StringToArray
//
//  Created by Sight Syndicate on 1/29/18.
//  Copyright © 2018 Zach Christensen. All rights reserved.
//

import Foundation


class StringArray {
    
    var myString : String
    
    init(string : String) {
        self.myString = string
    }
    

func evString() -> Array<String> {
    var a = Array<String>()
    var currentString = ""
    for i in 0..<myString.count {
        let index = myString.index(myString.startIndex, offsetBy: i)
        let s = myString[index]
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
}

