//: [Previous](@previous)

import Foundation

//: ## While циклы

/*:
 
    while condition {
        some code
    }
 
 */

var counter = 0

while counter < 5 {
    print("Counter is \(counter)")
    counter += 1
}

counter


/*:
 
    repeat {
        some code
    } while condition
 
 */

repeat {
    print("Counter is \(counter)")
    counter += 1
} while counter < 5

counter
