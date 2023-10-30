import UIKit

/*:
 ## Задание 1
 
 Напишите функцию, которая принимает массив чисел и замыкание, определяющее условие фильтрации. Функция должна вернуть новый массив, содержащий только те элементы, которые удовлетворяют условию замыкания. Не используйте стандартную функцию `filter(_:)`.
 */

func customFilter(_ numbers: [Int], completion: (Int) -> Bool) -> [Int] {
    var results: [Int] = []
    
    for number in numbers {
        if completion(number) {
            results.append(number)
        }
    }
    
    return results
}


let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let evenNumbers = customFilter(numbers) { $0 % 2 == 0 }
print(evenNumbers)

// Испльзование функции filter:
numbers.filter { $0 % 3 == 0 }

/*:
 ## Задание 2
 
 Напишите функцию, которая принимает строку и замыкание, которое преобразует каждый символ строки. Функция должна вернуть новую строку, состоящую из преобразованных символов.
 */

func transformString(_ string: String, completion: (Character) -> String) -> String {
    var result = ""
    
    for char in string {
        result.append(completion(char))
    }
    
    return result
}

let originalString = "Hello, World!"
let uppercasedString = transformString(originalString) { $0.uppercased() + "*" }
print(uppercasedString)

/*:
 ## Задание 3
 
 Создайте функцию, которая генерирует массив случайных чисел в заданном диапазоне. Функция должна принимать начальное и конечное значения диапазона, а также количество чисел, которые нужно сгенерировать. В качестве дополнительного параметра функция должна принимать замыкание, которое выполняет какую-либо операцию над каждым сгенерированным числом (например, увеличивает его на 1 или умножает на 2). Функция должна вернуть массив преобразованных чисел.
 */

func generateRandomNumbers(
    from minimumValue: Int,
    to maximumValue: Int,
    withCount count: Int,
    completion: (Int) -> Int
) -> [Int] {
    var result: [Int] = []
    
    for _ in 1...count {
        let randomNumber = Int.random(in: minimumValue...maximumValue)
        result.append(completion(randomNumber))
    }
    
    return result
}

let randomNumbers = generateRandomNumbers(from: 1, to: 100, withCount: 10) { $0 * 2 }
print(randomNumbers)


