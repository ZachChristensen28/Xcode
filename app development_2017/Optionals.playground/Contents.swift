//: Playground - noun: a place where people can play

import UIKit



let userInput = "three"
let userInputInt = Int(userInput)

if let convert = userInputInt{
    print (convert * 7)
}
else{
    // show error message to the user
    print("Please enter an Int")
}