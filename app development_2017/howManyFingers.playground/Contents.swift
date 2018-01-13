//: Playground - noun: a place where people can play

import UIKit

var randomNumber = Int(arc4random_uniform(5))
let userInput = 3

if randomNumber == userInput {
    print("You're Right")
}
else{
    print("Wrong, it was \(randomNumber)")
}