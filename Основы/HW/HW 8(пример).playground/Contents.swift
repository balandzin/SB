import UIKit

//: # Home Work 8
 
/*:
 ## Задание 1
 1.1 Создайте базовый класс `Shape` со следующими вычисляемыми свойствами:
 
 - `area: Double`
 
 - `perimeter: Double`
 
 - `description: String`
 
 Свойство `description` должно возвращать сообщение следующего вида: «The area of <...> is <...>. Perimeter - <...>»
 */

class Shape {
    
    var area: Double {
        0
    }
    
    var perimeter: Double {
        0
    }
    
    var description: String {
        String(format: "The area of \(type(of: self)) is %.2f. Perimeter - %.2f.", area, perimeter)
    }
}

/*:
 1.2. Создайте классы `Circle` и `Rectangle`, унаследовав их от `Shape`. Переопределите свойства `area` и `perimeter` для каждого класса в соответствии с правилом расчета площади и периметра (длины) конкретной фигуры.
 */

final class Circle: Shape {
    let radius: Double
    
    override var area: Double {
        Double.pi * radius * radius
    }
    
    override var perimeter: Double {
        2 * Double.pi * radius
    }
    
    override var description: String {
        String(format: "The area of \(type(of: self)) is %.2f. Length - %.2f.", area, perimeter)
    }
    
    init(radius: Double) {
        self.radius = radius
    }
    
}

class Rectangle: Shape {
    let width: Double
    let height: Double
    
    override var area: Double {
        height * width
    }
    
    override var perimeter: Double {
        (height + width) * 2
    }
    
    init(height: Double, width: Double) {
        self.height = height
        self.width = width
    }
}

/*:
 1.3. Создайте класс `Ellipse`, унаследовав его от `Rectangle`. Переопределите свойства `area` и `perimeter` в соответствии с правилом расчета площади и периметра эллипса (для расчета нужно использовать ширину и высоту).
 */

final class Ellipse: Rectangle {
    
    override var area: Double {
        Double.pi * height * width
    }
    
    override var perimeter: Double {
        let a = width / 2
        let b = height / 2
        let sumOfAxes = a + b
        let term1 = 3 * sumOfAxes
        let term2 = sqrt((3 * a + b) * (a + 3 * b))
        return Double.pi * (term1 - term2)
    }
}

//: 1.4 Создайте по экземпляру каждого класса, кроме `Shape` и выведите значение свойства `description` на консоль.

let rectangle = Rectangle(height: 6, width: 9)
let circle = Circle(radius: 5)
let ellipse = Ellipse(height: 10, width: 5)

print(rectangle.description)
print(circle.description)
print(ellipse.description)

/*:
 ## Задание 2
 2.1 Создайте структуру `Car` со следующими свойствами:
 - `model: String`
 - `power: Int`
 - `description: String`
 
 Свойство `description` должно возвращать сообщение с названием автомобиля и его мощность в лошадиных силах.
 
 Так же необходимо реализовать метод `increasePower`, который должен увеличить мощность автомобиля на заданное количество лошадиных сил.
  */

struct Car {
    let model: String
    var power: Int
    
    var description: String {
        "\(model), \(power) л.с."
    }
    
    mutating func increasePower(by power: Int) {
        self.power += power
    }
}

/*:
 2.2 Создайте экземпляр структуры и инициализируйте её свойства. Выведите значение свойства `description` на консоль, а затем вызовите метод `increasePower`. Снова выведите значение свойства `description` на консоль.
*/

var car = Car(model: "Super Car", power: 1000)
car.description

car.increasePower(by: 300)
car.description
