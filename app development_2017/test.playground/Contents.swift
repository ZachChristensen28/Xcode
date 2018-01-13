//: Playground - noun: a place where people can play

// Decimal is more exact than double but is slower

// Dictionary is awesome

import UIKit

let str = "Hello playground"

let a = "Hello Zach"

print(str + ", " + a)

var b = 20
var c:Int = 2
var e = b * c
print("int has value of \(e), \(a)")

var z:Double = 8.73
var y = 12.2

let i = 5.76
let h = 8

print("The product of \(i) * \(h) is \(i * Double(h))")

// Arrays ============================

var array = [36, 55, 12]
print(array[2])
print(array.count)
array.append(1)
array.remove(at: 1)
array.sort()
print(array)

var array1 = [3.87, 7.1, 8.9]
array1.remove(at: 1)
array1.append(array1[0] * array1[1])

let stringArray = [String]()

// Dictionary ================================

var dictionary = ["computer": "something to play games on", "coffee": "The best drink ever"]
print(dictionary["computer"]!)

print(dictionary.count)
dictionary["pen"] = "Old fashioned writing implement"
dictionary.removeValue(forKey: "computer")
print(dictionary)

var gameCharacters = [String: Decimal]()
gameCharacters["Ghost"] = 21.3

var menu = [String: Double]()
menu["pizza"] = 10.99
menu["ice cream"] = 4.99
menu["salad"] = 7.99
menu["pizza"]! + menu["ice cream"]!

// FOR LOOPS ==========================================

let dumbArray = [1,2,3,4,5]

for q in dumbArray {
    print(q)
}

var thisNumber = [5,2,3,4,6]

for (index, value) in thisNumber.enumerated() {
    thisNumber[index] += 1
}
print(thisNumber)

var thisArray = [Double]()
thisArray = [8, 7,19,28]

for (index, value) in thisArray.enumerated() {
    thisArray[index] = value * 1/2
}
print(thisArray)





