//: [Previous](@previous)
// swift loop
import Foundation


for index in 1..<5 {
    print("\(index) times 5 is \(index * 5)")
}

var index = 10

repeat {
    index += 1
    if index > 15 {
        continue
    }
    print("value index is \(index)")
} while index < 20
//: [Next](@next)
