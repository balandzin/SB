//: [Previous](@previous)

import Foundation

//: ## Словари
//: > Неупорядоченные коллекции, которые хранят в себе пары «ключ-значение». Тип ключа словаря может отличаться от типа значения. При этом сами ключи и значения должны быть одного типа
// Словарь с типом [Int: String]
let users = [1: "Tim Cook", 2: "Taylor Swift"]

// Создание пустого словаря с типом [String: String]
var carWashQueue: [String: String] = [:]

// Наполнение словаря данными
carWashQueue = ["EO92BA": "Red Toyota", "X127MT": "Gray BMW X6"]

// Изменение значения для ключа
carWashQueue["EO92BA"] = "Red Camry"

// Изменение значения с сохранением старого значения
let oldValue = carWashQueue.updateValue("White BMW X6", forKey: "X127MT")

// Добавление новой пары ключ-значение
carWashQueue["M566PA"] = "Green Chavralet Niva"

// Удаление значения по ключу с сохранением значения
carWashQueue.removeValue(forKey: "EO92BA")

carWashQueue.count
carWashQueue.removeAll()

//: [Next](@next)

