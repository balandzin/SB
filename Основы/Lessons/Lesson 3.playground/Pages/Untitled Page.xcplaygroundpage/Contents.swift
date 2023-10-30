import UIKit

//: ## Оператор ветвления if
/*:
    if condition {
        some code
    }
 
*/

var temperature = 20

if temperature < 18 { // False
    print("The weather is cool")
}

temperature = 15

if temperature < 18 { // True
    print("The weather is cool")
}

/*:
    if conditionOne {
        some code
    } else if conditionTwo {
        some code
    }
*/

temperature = 30

if temperature < 18 { // False
    print("The weather is cool")
} else if temperature < 25 { // False
    print("The weather is warm")
}

temperature = 20

if temperature < 18 { // False
    print("The weather is cool")
} else if temperature < 25 { // True
    print("The weather is warm")
}

temperature = 15

if temperature < 18 { // True
    print("The weather is cool")
} else if temperature < 25 { // True, but never execute
    print("The weather is warm")
}

if temperature < 18 { // True
    print("The weather is cool")
} 
if temperature < 25 { // True
    print("The weather is warm")
}

/*:
    if conditionOne {
        some code
    } else if conditionTwo {
        some code
    } else {
        some code
    }
 */

temperature = 30

if temperature < 18 { // False
    print("The weather is cool")
} else if temperature < 25 { // True
    print("The weather is warm")
} else {
    print("The weather is hot")
}

//: ### Тернарный оператор

var weather = ""

if temperature < 18 {
    weather = "The weather is cool"
} else {
    weather = "The weather is warm"
}

// condition ? some code : some code

weather = temperature < 18 ? "The weather is cool" : "The weather is warm"

print(weather)

//: ## Оператор switch



/*:
    switch значение для сопоставления {
    case значение 1:
        инструкция для первого значения
    case значение 2, значение 3:
        инструкция для второго и третьего значения
    default:
        инструкция, если совпадений с шаблонами не найдено
    }
*/

var grade: Character = "A"

if grade == "A" {
    print("Excellent")
} else if grade == "B" {
    print("Good")
} else if grade == "C" {
    print("Satisfactory")
} else if grade == "D" {
    print("Could be better")
} else {
    print("Invalid grade")
}

grade = "b"

if grade == "A" || grade == "a" {
    print("Excellent")
} else if grade == "B" || grade == "b" {
    print("Good")
} else if grade == "C" || grade == "c" {
    print("Satisfactory")
} else if grade == "D" || grade == "d" {
    print("Could be better")
} else {
    print("Invalid grade")
}

switch grade {
case "A", "a":
    print("Excellent")
case "B", "b":
    print("Good")
case "C", "c":
    print("Satisfactory")
case "D", "d":
    print("Could be better")
default:
    print("Invalid grade")
}


//: ### Соответствие диапазону

let approximateCount = 146
let countedThings = "moons orbiting Saturn"
var naturalCount = ""

switch approximateCount {
case ..<0:
    print("Error")
case 0:
    naturalCount = "zero"
case 1:
    naturalCount = "one"
case 2..<5:
    naturalCount = "a few"
case 5...11:
    naturalCount = "several"
case 12...99:
    naturalCount = "dozens of"
default:
    naturalCount = "many"
}

print("There are \(naturalCount) \(countedThings)")
