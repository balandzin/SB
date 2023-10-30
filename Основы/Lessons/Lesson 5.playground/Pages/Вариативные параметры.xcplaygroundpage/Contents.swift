//: [Previous](@previous)

import Foundation

//: ### Вариативные параметры

func getArithmeticMean(_ numbers: Double...) -> Double {
    var total = 0.0
    
    for number in numbers {
        total += number
    }
    
    return total / Double(numbers.count)
}

getArithmeticMean(1, 0, -9, 3.14, 76, 23)
