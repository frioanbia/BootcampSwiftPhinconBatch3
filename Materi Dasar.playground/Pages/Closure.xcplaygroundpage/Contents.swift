//: [Previous](@previous)

import Foundation

let studename = { print("Welcome to Swift Closures") }
studename()

let divide = {
    (val1: Int, val2: Int) -> Int in
    return val1 / val2
}

let result = divide(200, 10)
print(result)

func ascend(s1: String, s2: String) -> Bool {
    return s1 > s2
}

let stringcamp = ascend(s1: "swift 5", s2: "greet")
print(stringcamp) // hasil = true

let sum = {
    (no1: Int, no2: Int) -> Int in
    return no1 + no2
}

let digits = sum(30, 20)
print(digits) 


var shordhand: (String, String) -> String

shordhand = { $1 }
print(shordhand("100", "200")) // 200


let numb = [98, -20, -30, 42, 18, 35]
var sortedNumbers = numb.sorted (by: {
   (left: Int, right: Int) -> Bool in
   return left < right
})

let asc = numb.sorted(by: <)
print(asc)
//: [Next](@next)
