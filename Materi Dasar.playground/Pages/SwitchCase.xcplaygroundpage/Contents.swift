//: [Previous](@previous)

import UIKit

// CaseIterable yaitu perulangan didalam enum
enum Hari: String, CaseIterable {
    
    case Senin, Selasa, Rabu, Kamis, Jumat, Sabtu, Minggu
    
    func checkDays() -> String {
        switch self {
        case .Senin:
            return "kerja"
        default:
            return "libur"
        }
    }
}

var namaHari: Hari = Hari.Senin
print(namaHari.checkDays())
print(Hari.allCases.count)
//: [Next](@next)
