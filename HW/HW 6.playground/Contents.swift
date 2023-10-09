import UIKit

/*:
 ## Задание 1
 
 Напишите функцию, которая принимает массив чисел и замыкание, определяющее условие фильтрации. Функция должна вернуть новый массив, содержащий только те элементы, которые удовлетворяют условию замыкания. Не используйте стандартную функцию `filter(_:)`.

Пример использования вашей функции:
 */
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

func customFilter(numbers: [Int], closure: (Int) -> Bool) -> [Int] {
    var editNumbers: [Int] = []
    
    for number in numbers {
        if closure(number) {
            editNumbers.append(number)
        }
    }
    
    return editNumbers
}

let filteringNumbers = customFilter(numbers: numbers) { $0 % 3 == 0 }

print(filteringNumbers)
/*:
 ## Задание 2
 
 Напишите функцию, которая принимает строку и замыкание, которое преобразует каждый символ строки. Функция должна вернуть новую строку, состоящую из преобразованных символов.

Пример использования вашей функции:
 */
let originalString = "Hello, World!"

func transformString(expression: String, closure: (Character) -> String) -> String {
    var editString: String = ""
    
    for char in expression {
        editString.append(closure(char))
    }
    
    return editString
}

let uppercasedString = transformString(expression: originalString) { $0.lowercased() }

print(uppercasedString)
/*:
 ## Задание 3
 
 Создайте функцию, которая генерирует массив случайных чисел в заданном диапазоне. Функция должна принимать начальное и конечное значения диапазона, а также количество чисел, которые нужно сгенерировать. В качестве дополнительного параметра функция должна принимать замыкание, которое выполняет какую-либо операцию над каждым сгенерированным числом (например, увеличивает его на 1 или умножает на 2). Функция должна вернуть массив преобразованных чисел.

Пример использования вашей функции:
 */
func generateRandomNumbers(from lowerLimit: Int, to upperLimit: Int, count: Int, closure: (Int) -> Int) -> [Int] {
    var numbers: [Int] = []
    
    for _ in 1...count {
        let randomNumber = Int.random(in: lowerLimit...upperLimit)
        
        numbers.append(closure(randomNumber))
    }
    
    return numbers
}

let randomNumbers = generateRandomNumbers(from: 1, to: 100, count: 10) { $0 * 2 }

print(randomNumbers)
