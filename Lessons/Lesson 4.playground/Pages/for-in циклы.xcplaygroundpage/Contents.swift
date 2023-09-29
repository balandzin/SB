//: [Previous](@previous)

import Foundation

//: ## For-in циклы

/*:
 
    for counter in lower…upper {
        some code
    }
 
 */
var total = 0

for number in 1...5 {
    total += number
}

print(total)

//: ### Итерация по массиву

let fruits = [
    "apple",
    "banana",
    "pineapple",
    "apple",
    "pear",
    "apple",
    "plum",
    "apricot",
    "apple"
]

var appleCount = 0

for fruit in fruits {
    if fruit == "apple" {
        appleCount += 1
    }
}

print("The number of apples is \(appleCount) pieces")

//: ### Итерация по словарю

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]

for (animal, legCount) in numberOfLegs {
    print("\(animal)s have \(legCount) legs")
}

//: ### Итерация по тексту

let greeting = "Hello!"

for char in greeting {
    print(char)
}

//: [Next](@next)
