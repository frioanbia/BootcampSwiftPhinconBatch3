//: [Previous](@previous)

import Foundation

let posibleNumber = "123"
let posibleNumber2 = "567"

func checkNumber() {
    // gurad menjalankan statment 1 baris, untuk data optional
    guard let number = Int(posibleNumber), let number2 = Int(posibleNumber2) else {
        fatalError("error")
    }
    print("\(number)+\(number2)")
}

checkNumber()
//: [Next](@next)
