import UIKit

// Урок 7. ООП. Классы и объекты

class Human {
    var name: String
    var age: Int
        
    var status: String {
        if age >= 18 {
            "Совершеннолетний"
        } else if age < 18 && age >= 0 {
            "Несовершеннолетний"
        } else {
            "Не установлено"
        }
    }
    
    func getInfo() {
        print("name \(name) age \(age) status \(status)")
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}

let anton = Human(name: "Anton", age: 12)
anton.status
anton.getInfo()


