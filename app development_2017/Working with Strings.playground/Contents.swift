//: Playground - noun: a place where people can play

import UIKit

var str = "Hello"

var newString = str + " Zach!"

for character in newString.characters {
    
    print(character)
    
}

let newTypeString = NSString(string: newString)

newTypeString.substring(to: 5)

newTypeString.substring(from: 4)


//Get a portion of the string =============================
NSString(string: newTypeString.substring(from: 6)).substring(to: 4)

//better way to do it ======================================
newTypeString.substring(with: NSRange(location: 6, length: 4))


// Identify if the string parts =========================
if newTypeString.contains("Zach"){
    
    print("newTypeString contains zach!")
}

newTypeString.components(separatedBy: " ")

newTypeString.uppercased

newTypeString.lowercased
