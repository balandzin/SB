
import Foundation
//: # Lesson 5

//: ## Функции

/*:
 
    func nameOfFunction() {
        some code
    }
 
 */


func printSinusOfNumberOne() {
    print(String(format: "Синус числа один равен %.3f", sin(0.1)))
}

printSinusOfNumberOne()
let printSinus = printSinusOfNumberOne

printSinus()



//: ### Функции с возвращаемыми значениями

/*:
    func nameOfFunction() -> Data Type {
        some code
        return some value
    }
 
 */

func getSinusOfNumberOne() -> Double {
    let sinus = sin(1.0)
    return round(sinus * 1000) / 1000
}

let sinus = getSinusOfNumberOne()

//: ### Функции с параметрами

/*:
    func name(argumentOne parameterOne: Data Type, argumentTwo parameterTwo: Data Type) {
        some code
    }
 */

// Функция с параметрами без аргументов
func sum(numberOne: Int, numberTwo: Int) -> Int {
    numberOne + numberTwo
}

let result = sum(numberOne: 6, numberTwo: 9)

// Функция с параметрами и аргументами
func sum(of numberOne: Int, and numberTwo: Int) -> Int {
    numberOne + numberTwo
}

sum(of: 6, and: 9)

func calculateRoundedSine(of value: Double, toDecimalPlaces places: Int = 3) -> Double {
    let sinus = sin(value)
    let multiplier = pow(10.0, Double(places))
    return round(sinus * multiplier) / multiplier
}

calculateRoundedSine(of: 1, toDecimalPlaces: 2)
calculateRoundedSine(of: 1)

//: [Next](@next)
