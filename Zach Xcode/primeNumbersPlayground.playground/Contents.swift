//: Playground - noun: a place where people can play

import UIKit

var userInput = String(8)

var check = Int(userInput)!

var isPrime = true

if check == 1 {
    
    isPrime = false
}

if check != 2 && check != 1 {
    
    for var i = 2; i < check; i = i + 1 {
    
        if check % i == 0 {
        
            isPrime = false
        
        }
    
    }
}

print(isPrime)

if isPrime == true {
    
    print("Prime userInput!")
    
} else{
    
    print("Not a prime userInput")
    
}
