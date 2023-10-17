import UIKit

//: # Home Work 9

/*:
 ## Задание 1
 1.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление*.
 */
enum CalculationType: String {
    case addition = "сложения"
    case subtraction = "вычитания"
    case multiplication = "умножения"
    case division = "деления"
}
//: 1.2 Напишите функцию возвращающую `Int` и принимающую в качестве параметров три значения: число один, число два и тип математической операции. Внутри функции, в зависимости от значения параметра `CalculationType` выполните соответствующую математическую операцию со значениями и верните результат. Реализуйте функцию таким образом, что бы при каждом её вызове на консоль выводилось сообщение следующего содержания: «Результат сложения (вычитания, деления, умножения) <…> и <…> равен <…>».
func calculate(numberOne: Int, numberTwo: Int, operation: CalculationType) -> Int {
    let result = switch operation {
    case .addition:
        numberOne + numberTwo
    case .subtraction:
        numberOne - numberTwo
    case .multiplication:
        numberOne * numberTwo
    case .division:
        numberOne / numberTwo
    }
    
    print("Результат \(operation.rawValue) \(numberOne) и \(numberTwo) равен \(result)")

    return result
}
//: 1.3 Вызовите эту функцию четыре раза для каждого математического оператора в отдельности.
calculate(numberOne: 9, numberTwo: 3, operation: .addition)
calculate(numberOne: 9, numberTwo: 3, operation: .subtraction)
calculate(numberOne: 9, numberTwo: 3, operation: .multiplication)
calculate(numberOne: 9, numberTwo: 3, operation: .division)
/*:
 ## Задание 2
 2.1 Создайте перечисление `DistanceUnit` (Единица измерения расстояния) со следующими кейсами: `versta`, `kilometer`, `mile`.
 
 Внутри перечисления `DistanceUnit` создайте еще одно перечисление `NonISUCountry` в котором содержится перечень стран не принявших международную систему единиц (США, Либерия и Мьянма).
 
 Верста и километр должны иметь ассоциативный параметры следующего типа: `(title: String, denotation: String, countries: [String])`. Миля - `(title: String, denotation: String, countries: [NonISUCountry])`. Первый параметр - это название единицы измерения, второй параметр отвечает за обозначение единицы, а массив должен содержать перечень стран в которых используется эта единица (для километра не обязательно перечислять все страны).
 */
enum DistanceUnit {
    case versta(title: String, denotation: String, countries: [String])
    case kilometer(title: String, denotation: String, countries: [String])
    case mile(title: String, denotation: String, countries: [NonISUCountry])
    
    enum NonISUCountry: String {
        case usa = "США"
        case liberia = "Либерия"
        case myanmar = "Мьянма"
    }
}
/*:

 2.2 Создайте по экземпляру DistanceUnit для каждого кейса и функцию, которая должна принимать единицу измерения и выводить на консоль информацию о ней, например: "Километр. Краткое наименование: км. Страны: Россия, Евросоюз".
 */
func getInfo(about unit: DistanceUnit) {
    switch unit {
    case .kilometer(let title, let denotation, let countries),
            .versta(let title, let denotation, let countries):
        print("\(title). Краткое наименование: \(denotation). Страны: \(countries.joined(separator: ", "))")

    case .mile(let title, let denotation, let countries):
        print("\(title). Краткое наименование: \(denotation). Страны: \(countries.description)")
    }
}

let versta: DistanceUnit = .versta(title: "Верста", denotation: "вст", countries: ["Зимбабве", "Эритрея", "Восточный Тимор"])
let kilometer: DistanceUnit = .kilometer(title: "Километр", denotation: "км", countries: ["Сейшельские острова", "Сен-Бартелеми", "Танзания"])

let mile: DistanceUnit = .mile(title: "Миля", denotation: "м", countries: [.liberia, .myanmar, .usa])

getInfo(about: mile)
