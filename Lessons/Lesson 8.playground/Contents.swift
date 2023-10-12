import UIKit

//: # Lesson 8
//: ### Наследование


class Human {
    let name: String
    var age: Int
    
    init(name: String, age: Int = 0) {
        self.name = name
        self.age = age
    }
    
    func walk() {
        print("I can walk")
    }
    
    func sleep() {
        print("I need sleep")
    }
    
    func eat() {
        print("I need food")
    }
}

let person = Human(name: "Tim Cook", age: 62)
person.eat()
person.sleep()
person.walk()

class Child: Human {
    func nursing() {
        if age <= 5 {
            print("I need care")
        } else {
            print("I can eat independently")
        }
    }
    
    func parenting() {
        if age >= 5 && age <= 13 {
            print("I need an education")
        } else if age < 5 {
            print("Me too early to educate")
        } else {
            print("Me too late to educate")
        }
    }
}

let tom = Child(name: "Tom", age: 4)
tom.eat()
tom.sleep()
tom.walk()
tom.nursing()
tom.parenting()

final class SchoolChild: Child {
    func schooling() {
        if age >= 6 && age <= 17 {
            print("I have to go to school")
        } else {
            print("I'm still too early in school")
        }
    }
}

let sarah = SchoolChild(name: "Sarah", age: 7)
sarah.eat()
sarah.sleep()
sarah.walk()
sarah.nursing()
sarah.parenting()
sarah.schooling()

//: ### Полиморфизм

class Animal {
    var description: String {
        "This is \(type(of: self)). \(type(of: self)) say \(makeSound())"
    }
    
    func makeSound() -> String {
        ""
    }
}

final class Cat: Animal {
    override func makeSound() -> String {
        "Meow!"
    }
}

final class Dog: Animal {
    override func makeSound() -> String {
        "Woof!"
    }
}

final class Zoo {
    private var animals: [Animal] = []
    
    func add(animal: Animal) {
        animals.append(animal)
    }
    
    func showAnimals() {
        animals.forEach { animal in
            print(animal.description)
        }
    }
}

let zoo = Zoo()

let cat = Cat()
zoo.add(animal: cat)

let dog = Dog()
zoo.add(animal: dog)

zoo.showAnimals()

//: ## Структуры

struct PlayerLocation {
    let player: String
    var x: Int
    var y: Int
    
    func getLocation() {
        print("\(player) is at \(x) and \(y)")
    }
}

var player = PlayerLocation(player: "PlayerOne", x: 10, y: 8)

player.getLocation()
player.x = 5
player.getLocation()

//: ### Сравнение классов и структур

final class MacBook {
    var title: String
    var year: Int
    var color: String
    
    var description: String {
        "\(title) \(year) \(color)"
    }
    
    init(title: String, year: Int, color: String) {
        self.title = title
        self.year = year
        self.color = color
    }
}

let macBookPro = MacBook(title: "MacBook Pro", year: 2023, color: "Silver")

let macBookAir = macBookPro
macBookAir.title = "MacBook Air"
macBookAir.color = "Gold"

print(macBookPro.description)
print(macBookAir.description)

struct IPhone {
    var title: String
    var color: String
    var capacity: Int
    
    var description: String {
        "\(title) \(color) \(capacity)Gb"
    }
}

let iPhoneXR = IPhone(title: "iPhone XR", color: "Coral", capacity: 128)

var iPhone15Pro = iPhoneXR
iPhone15Pro.title = "iPhone 15 Pro"

print(iPhoneXR.description)
print(iPhone15Pro.description)

var number = 12
let anotherNumber = number

number = 0
anotherNumber // 12


//: ### Методы в структурах


struct Rectangle {
    var width: Int
    var height: Int
    
    var area: Int {
        width * height
    }
    
    mutating func scale(width: Int, height: Int) {
        self.width *= width
        self.height *= height
    }
}

var rectangle = Rectangle(width: 10, height: 5)
rectangle.area
rectangle.scale(width: 2, height: 3)
rectangle.area

