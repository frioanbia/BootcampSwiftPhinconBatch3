//: [Previous](@previous)
// function
import Foundation

func data(name: String) {
    print(name)
}

data(name: "mamat")

func student(name: String) -> String {
    return name
}

print(student(name: "Frio"))
print(student(name: "Mamat"))

func display(no1: Int) -> Int {
    let a = no1
    return a
}

print(display(no1: 120))
print(display(no1: 100))

func multi(no1: Int, no2: Int) -> Int {
    return no1 * no2
}

print(multi(no1: 2, no2: 20))
print(multi(no1: 3, no2: 20))

func votername() -> String {
    return "Ujang"
}

print(votername())

func calcDecrement(forDecrement total: Int) -> () -> Int {
   var overallDecrement = 0
   func decrementer() -> Int {
      overallDecrement -= total
      return overallDecrement
   }
   return decrementer
}

let decrem = calcDecrement(forDecrement: 30)
print(decrem())

enum Days: String {
    case Senin, Selasa, Rabu, Kamis, Jumat, Sabtu, Minggu
}


func checkDays(day: String) {
    
}

print(checkDays(day: "sabtu"))


//: [Next](@next)
