import UIKit
import Foundation
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
        0.0
    }
    var perimeter: Double {
        0.0
    }
    let description: String {
        "The area of \(type(of: self)) is \(area). Perimeter - \(perimeter)"
    }
}


/*:
 1.2. Создайте классы `Circle` и `Rectangle`, унаследовав их от `Shape`. Переопределите свойства `area` и `perimeter` для каждого класса в соответствии с правилом расчета площади и периметра (длины) конкретной фигуры.
 */
final class Circle: Shape {
    let radius: Double
    
    override var area: Double {
        Double.pi * pow(radius, 2)
    }
    override var perimeter: Double {
        2 * Double.pi * radius
    }
    
    init(radius: Double) {
        self.radius = radius
    }
}

class Rectangle: Shape {
    let width: Double
    let height: Double
    
    override var area: Double {
        width * height
    }
    override var perimeter: Double {
        2 * (width + height)
    }
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}


/*:
 1.3. Создайте класс `Ellipse`, унаследовав его от `Rectangle`. Переопределите свойства `area` и `perimeter` в соответствии с правилом расчета площади и периметра эллипса (для расчета нужно использовать ширину и высоту).
 */
final class Ellipse: Rectangle {
    override var area: Double {
        Double.pi * width * height
    }
    
    override var perimeter: Double {
        4 * (Double.pi * height * width + height - width) / (width + height)
    }
}

//: 1.4 Создайте по экземпляру каждого класса, кроме `Shape` и выведите значение свойства `description` на консоль.
let circle = Circle(radius: 1)
let rectangle = Rectangle(width: 2, height: 3)
let ellipse = Ellipse(width: 5, height: 13)

print(circle.description)
print(rectangle.description)
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



/*:
 2.2 Создайте экземпляр структуры и инициализируйте её свойства. Выведите значение свойства `description` на консоль, а затем вызовите метод `increasePower`. Снова выведите значение свойства `description` на консоль.
*/

