//: Playground - noun: a place where people can play

import UIKit

//Stirngs 

var str = "Hello, playground"

var name = "Zach"

print("hello " + name + ".")


//Integers (whole numbers)

var int:Int = 9

int = int * 2

int = int / 4

var anotherInt = 7

print(int * anotherInt)

print("The value of int is \(int)")


//Double (numbers with decimals)
var number:Double = 8.4

print(number * 7)

print(number * Double(int))

//Boolean (ture/false)
var isMale:Bool = true

//quiz example

var a = 7

var b = 10.25

var c = b / Double(a)

print("The difference of a and b is \(c)")


//Arrays

var array = [17, 25, 13, 47]

print(array[0])

print(array.count)

array.append(56)

array.removeAtIndex(3)

print(array)

array.sort()

//quiz

var z = [10, 20, 12]

z.removeAtIndex(1)

z.append(z[0] * z[1])


//Dictionaries

var dictionary = ["computer": "something to play call of duty on", "coffee": "best drink ever"]

print(dictionary["coffee"]!)

print(dictionary.count)

dictionary["Pen"] = "THE PEN IS BLUE!"

dictionary.removeValueForKey("computer")

print(dictionary)


//quiz

var menu = ["Cheeseburger": 5, "Steak": 12, "Chicken": 8]

var totalCost = menu["Cheeseburger"]! + menu["Steak"]! + menu["Chicken"]!


print("The total cost of the three items is \(totalCost)")



//If Statements

var age = 24

if age >= 18 {
    
    print("You can play")
    
} else {
    
    print("Sorry, You're too young")
    
}

var myName = "Zach"

if name == "Zach" {
    
    print("Hi Zach, you can play")
    
}
else{
    
    print("Sorry, Name does not match")
    
}

// and statements

if myName == "Zach" && age >= 18 {
    print("You can play")
}

//Or Statements

if myName == "Zach" || myName == "Steven" {
    
    print("you can play")
}



//boolean statement

var isFemale = true

if isFemale {
    
    print("you are a woman")
    
}


//challenge

//username and password var, check to see if they are correct if not tell user which one is wrong

var user = "zachc"

var password = "pass1234"

if user == "zachc" && password == "pass123" {
    
    print("you may enter")
    
} else if user != "zachc" && password != "pass123" {
    
    print("wrong username and password")
} else if user == "zachc" {
    
    print("wrong password")
    
} else {
    
    print("wrong username")
}



























































