import UIKit

// Урок 3. Операторы ветвления

//print(String(format: "sin = %.3f", sinus))

/*
 if condition {
 some code
 }
 */

var temperature = 15

if temperature < 18 {
    print("cold")
} else if temperature < 25 {
    print("cool")
}

if temperature < 25 {
    print("cool ветвление 2")
}

let weather = temperature < 18 ? "cold" : "warm"

var grade = "a"

switch grade {
case "A", "a":
    print("Exelent")
case "B":
    print("Good")
case "C":
    print("Satisfactory")
case "D":
    print("Coul be better")
default:
    print("Eror")
}

let count = 146
var naturalCount = ""

switch count {
case ..<0:
    naturalCount = "error"
case 1:
    naturalCount = "one"
case 2:
    naturalCount = "two"
case 3..<5:
    naturalCount = "a few"
    fallthrough
case 6...99:
    naturalCount = "many"
default:
    naturalCount = "over"
}
