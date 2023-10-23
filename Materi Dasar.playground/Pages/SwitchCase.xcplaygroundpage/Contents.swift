//: [Previous](@previous)

import UIKit

// CaseIterable yaitu perulangan didalam enum
enum Hari: String, CaseIterable {
    
    case senin, selasa, rabu, kamis, jumat, sabtu, minggu
    
    func checkDays() -> String {
        switch self {
        case .senin:
            return "kerja"
        default:
            return "libur"
        }
    }
}

print(Hari.allCases.count)
//: [Next](@next)
