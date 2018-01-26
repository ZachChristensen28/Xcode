//: Playground - noun: a place where people can play

import UIKit



func returnOptional() -> String? {
    if arc4random() % 2 == 0 {
        return "hello world"
    } else {
        return nil
    }
}

func tryTheOptional() {
    let s = returnOptional()
    if let s2 = s {
        print("The string is \(s2)")
    } else {
        print("It was nil")
    }
}

tryTheOptional()
