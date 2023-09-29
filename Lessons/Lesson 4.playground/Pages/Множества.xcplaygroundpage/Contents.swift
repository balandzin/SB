//: [Previous](@previous)

import Foundation


//: ## Множества
//: > Хранят в себе неупорядоченные, но при этом уникальные значения одного типа

// Создание множества с типом String
let strings: Set = ["a", "a", "a", "b", "c"]

// Создание пустого множества с типом Character
var characters: Set<Character> = []

// Добавление нового элемента в множество
characters.insert("b")
characters.insert("b")

// Проверка на наличие определенного элемента во множестве
characters.contains("b")

// Сортировка с использованием метода sorted() для последующей итерации по множеству
characters = ["a", "a", "a", "b", "c"]
let chars = characters.sorted(by: >)

//: [Next](@next)
