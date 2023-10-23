//: [Previous](@previous)

import Foundation

var perhapsInt: Int?
var perhapsStr: String?

var perhapsStrr: String? = nil

// example
var myStr: String? = nil

if myStr !=  nil {
    print(myStr!)
} else {
    print("myStr has nil value")
}

// Forced Unwrapping

var myStri: String?
myStri = "Hello, Frio 1!"

if myStri != nil {
    print(myStri!)
} else {
    print("myStri has nil vale")
}

// Automatic Unwrapping

var myString: String?
myString = "Hello, Frio 2!"

if myString != nil {
    print(myString!)
} else {
    print("myString has nil value")
}

// Optional Binding

// Example
var myString1: String?
myString1 = "Hello, Ujang!"

if let yourString = myString1 {
    print("Your string has - \(yourString)")
} else {
    print("Your string does not have a value")
}

//: [Next](@next)
//: [Next](@next)
