//: [Previous](@previous)
// struct
import Foundation

struct studentMark {
    var mark1 = 10
    var mark2 = 20
    var mark3 = 30
}

let mark = studentMark()

print("Mark is \(mark.mark1)")
print("Mark is \(mark.mark2)")
print("Mark is \(mark.mark3)")

struct structMark {
    var mark: Int
    
    init(mark: Int) {
        self.mark = mark
    }
}

var aStruct = structMark(mark: 30)
var bStruct = aStruct
bStruct.mark = 98

print(aStruct.mark) // 30
print(bStruct.mark) // 98

struct markstruct {
    var mark1: Int
    var mark2: Int
    var mark3: Int
    
    init(mark1: Int, mark2: Int, mark3: Int) {
        self.mark1 = mark1
        self.mark2 = mark2
        self.mark3 = mark3
    }
}

var marks = markstruct(mark1: 40, mark2: 50, mark3: 60)
print(marks.mark1) // 40
print(marks.mark2) // 50
print(marks.mark3) // 60



// membuat struct dengan property Int, String, enum
enum Days: String {
    
    case Senin, Selasa, Rabu, Kamis, Jumat, Sabtu, Minggu
    
    func checkDays() -> String {
        switch self {
        case .Sabtu, .Minggu:
            return "hari libur"
        default:
            return "hari kerja"
        }
    }
}

struct workDays {
    var name: String
    var days: Days
    
    init(name: String, days: Days) {
        self.name = name
        self.days = days
    }
}

let check: Days = Days.Jumat
let person = workDays(name: "ujang", days: Days.Jumat)
print("saya \(person.name) dan hari \(person.days) adalah \(check.checkDays())")

//: [Next](@next)
