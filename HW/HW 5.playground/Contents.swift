import UIKit

//: # Home Work 5
/*:
 ## Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды. Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядеть это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Салават Юлаев - N/A
 
 - Игра с Авангард - 2:1
  
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */
let gameResults = ["Салават Юлаев": ["3:6", "5:5", "N/A"],
                   "Авангард": ["2:1"],
                   "АкБарс": ["3:3", "1:2"]]

for (team, scores) in gameResults {
    for score in scores {
        print("Игра с \(team) - \(score)")
    }
}


/*:
 ## Задание 2
 Создайте функцию, которая считает общую сумму переданных в нее целочисленных значений и возвращает итоговый результат. Числа можно передавать либо в массиве, либо по отдельности, на ваше усмотрение. Вызовите функцию.
 */
let numbers = [1, 2, 3, 4, 5]

func sum(of numbers: [Int]) -> Int {
    var result = 0
    for number in numbers {
        result += number
    }
    return result
}

let result = sum(of: numbers)

print("result = \(result)")
/*:
 ## Задание 3
 3.1 Создайте функцию, которая определяет является ли число четным. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`.
 */
let number = 9

func checkForParity(number: Int) -> Bool {
    number % 2 == 0
}

print(checkForParity(number: number))
/*:
3.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение.
*/
func multipleOfThree(number: Int) -> Bool {
    number % 3 == 0
}

print(multipleOfThree(number: number))
/*:
 3.3 Создайте функцию, которая возвращает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен задаваться при вызове функции при помощи параметров. Вы должны самостоятельно реализовать логику создания массива. Если хотите усложнить задание, то можете возвращать не сортированный массив чисел в заданном интервале. Главное, что бы числа были уникальными и не повторялись. При этом количество элементов массива должно соответствовать количеству элементов заданного интервала.
 */
func getArray(from lowerLimit: Int, until upperLimit: Int) -> Set<Int> {
    
    var numbers: Set<Int> = []
    
    for number in  lowerLimit...upperLimit {
        numbers.insert(number)
    }
    
    print("Множество из \(numbers.count) элементов: \(numbers)")
    return numbers
}

getArray(from: 6, until: 15)

/*:
3.4 Создайте массив чисел от *1* до *100*, используя для этого выше созданную функцию
 */
let integers = getArray(from: 1, until: 100)
/*:
 3.5 Создайте функцию для фильтрации переданного в неё массива. Функция должна возвращать новый массив без четных чисел. Для определения фильтруемых значений используйте ранее созданную функцию из задания **3.1**.
 */
func removeForEvenParity(numbers: Set<Int>) -> [Int] {
    var unevenNumbers: [Int] = []
    
    for number in numbers {
        if !checkForParity(number: number) {
            unevenNumbers.append(number)
        }
    }
    return unevenNumbers
}

/*:
 3.6 Создайте функцию для фильтрации переданного в неё массива. Функция должна возвращать новый массив без чисел кратных трем. Для определения фильтруемых значений используйте ранее созданную функцию из задания **3.2**.
 */
func removeMultipleOfThree(numbers: [Int]) -> [Int] {
    var unevenNumbers: [Int] = []
    
    for number in numbers {
        if !multipleOfThree(number: number) {
            unevenNumbers.append(number)
        }
    }
    return unevenNumbers
}
/*:
 3.7 Отфильтруйте массив из задания **3.4** при помощи двух последний функций.
 */
let numbersWithoutEven = removeForEvenParity(numbers: integers)

let resultNumbers = removeMultipleOfThree(numbers: numbersWithoutEven)

print("result array: \(resultNumbers)")


