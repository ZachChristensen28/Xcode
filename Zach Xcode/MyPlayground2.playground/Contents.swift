//: Playground - noun: a place where people can play

import UIKit

// Random Numbers

let randomNumber = arc4random_uniform(6) //–> between 0-5
print(randomNumber)


//Loops
/*

for var i = 2; i <= 20; i = i + 2 {
    
    print(i)
    
}

*/


/*
var array = [8, 3, 9, 91]

for (index, value) in array.enumerate(){
    
    array[index] = value + 1
    
}

print(array)

for i in array {
    
    print(i)
    
}


//create an array and half all the values in the array

var a:[Double] = [10, 20, 50, 32]

for (index, value) in a.enumerate() {
    
    a[index] = value/2
    
}

print(a)


// while loops

var i = 1

while i < 10{
    print(i)
    
    i=i*2
    
}


var x = 1

while x <= 10 {
    
    print(x * 5)
    
    x++
    
}




var arr = [ 8, 3, 4, 6, 6, 3, 5, 2]

var z = 0

while z < arr.count {
    
    print(arr[z])
    
    z++
    
}


//create array of 7 numbers and subtract 1 from each index using a while loop

var arrg = [7, 8, 9, 10, 23, 45, 6]

var w = 0

while w < arrg.count {
    
    arrg[w] = arrg[w] - 1
    
    w++
}

print(arrg)


*/



// figure out wheater a number is prime

/*

func is_prime(n: Int) -> Bool {

    let n = 7
    
if n <= 1 {
    return false
}

if n <= 3 {
    return true
}

var i = 2
while i*i <= n {
    if n % i == 0 {
        return false
    }
    i = i + 1
}
return true

}
 

let numbers = 1...100

for number in numbers {
    
    //set the flag to true initially
    var prime = true
    
    for var i = 2; i <= number - 1; i++ {
        
        //even division of a number thats not 1 or the number itself = not a prime number
        if number % i == 0 {
            prime = false
            break
        }
    }
    
    if prime == false {
        print("\(number) is not prime.")
        
    }  else {
        
        print("\(number) is prime.")
        
    }
    
    
}

*/


func is_prime(n: Int) -> Bool {
    
    if n <= 1 {
        return false
    }
    if n <= 3 {
        return true
    }
    var i = 2
    while i*i <= n {
        if n % i == 0 {
            return false
        }
        i = i + 1
    }
    return true

}




































