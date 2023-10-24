//: [Previous](@previous)
// Class
import Foundation

class StudentMark {
    var mark1 = 200
    var mark2 = 400
    var mark3 = 600
}

let marks = StudentMark()
print("Mark1 is \(marks.mark1)")
print("Mark2 is \(marks.mark2)")
print("Mark3 is \(marks.mark3)")


class Model {
    var name: String
    var weight: Double
    var height: Double
    
    init(name: String, weight: Double, height: Double) {
        self.name = name
        self.weight = weight
        self.height = height
    }
    
    func report() {
        print("\(name) beratnya \(weight) tinggi \(height)")
    }
    
    func besar() {
        print("Besar \(name)")
        weight += 1
        report()
    }
}

var catClass1 = Model(name: "frio", weight: 2.5, height: 5)
var catClass2 = Model(name: "frio", weight: 3.5, height: 5)

catClass1.report()
catClass2.report()

// class ModelCat mewarisi dari class Model
class ModelCat: Model {
    var laserEnergy: Int
    
    init(name: String, weight: Double, height: Double, laserEnergy: Int) {
        self.laserEnergy = laserEnergy
        super.init(name: name, weight: weight, height: height)
    }
    
    func fireLaser() {
        if laserEnergy > 0 {
            print("\(name) fires a laser. Pew! Pew!")
            laserEnergy -= 1
        } else {
            print("No energy to fire laser.")
        }
    }
    
    override func report() {
        print("\(name) tinggi \(weight) berat dan memiliki \(laserEnergy) satuan energi laser.")
    }
}

let classCat5 = ModelCat(name: "FELINE", weight: 20.0, height: 100.0, laserEnergy: 10)
classCat5.fireLaser()
classCat5.besar()

// class person
class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

extension Person {
    var fullName: String {
        return firstName + " " + lastName
    }
}

let person = Person(firstName: "Mamat", lastName: "Riyandi")
print(person.fullName)


//: [Next](@next)
