import UIKit

//: # Home Work 7

/*:
 ## Задание 1

 1. Создайте класс `Student`. В этом классе должны быть следующие свойства:
    - `name: String`: Имя студента. Это свойство должно быть инициализировано при создании объекта класса.
    - `age: Int`: Возраст студента. Это свойство также должно быть инициализировано при создании объекта класса.
    - `grades: [Int]`: Оценки студента.
    - `averageGrade Double`: Средний балл студента. Это свойство должно быть геттером.
    - `description: String`: Статус студента. Это свойство должно быть геттером и возращать следующее значение: "<имя>: <средний бал>, <статус>"

 2. В классе должен быть метод `getStatus`, который возвращает статус студента на основе его среднего балла. Правила следующие:
    - Если средний балл 0, то статус - "New".
    - Если средний балл между 1 и 3, то статус - "Underperforming".
    - Если средний балл между 4 и 6, то статус - "Average".
    - Если средний балл между 7 и 8, то статус - "Good".
    - Если средний балл между 9 и 10, то статус - "Excellent".

 3. В классе должен быть метод `addGrade`, который добавляет оценку к списку оценок студента.
 
 У класса должен быть согласованный и логичный интерфейс. Не забывайте про инкапсуляцию.

 Проверьте ваш код, создав несколько объектов класса `Student` и вызывая метод `addGrade()` для добавления оценок. Выведите на экран имя студента, его средний балл и статус.

 **Бонусное задание:**
 Создайте класс `Classroom` со свойством `students`, представляющим собой массив объектов класса `Student`. Реализуйте метод `addStudent` для добавления студентов в список. Так же реализуйте метод `getAverageGrade()`, который вычисляет средний балл всех студентов в классе.
 
 Предусмотрите возможность создания экземпляра класса, как с пустым списком учеников, так и с возможностью передать готовый список в инициализатор.
 
 */
class Student {
    let name: String
    let age: Int
    private var grades: [Int] = []
    var averageGrade: Double {
        Double(grades.reduce(0, +)) / Double(grades.count)
    }
    var description: String {
        "\(name): \(averageGrade), \(getStatus())"
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func getStatus() -> String {
        let status = switch round(averageGrade) {
        case 0: "New"
        case 1...3: "Underperforming"
        case 4...6: "Average"
        case 7...8: "Good"
        case 8...10: "Excellent"
        default: "Unable to determine status"
        }
        return status
    }
    
    func addGrade(grade: Int) {
        grades.append(grade)
    }
}

let anton = Student(name: "Anton", age: 21)
let maria = Student(name: "Maria", age: 22)


anton.addGrade(grade: 8)
anton.addGrade(grade: 9)
anton.addGrade(grade: 9)

maria.addGrade(grade: 7)
maria.addGrade(grade: 8)
maria.addGrade(grade: 4)

print(anton.description)
print(maria.description)


//Бонусное задание

class Classrom {
    var students: [Student]
    
    func addStudent(student: Student) {
        students.append(student)
    }
    
    func getAverageGrade() {
        var sumAverageGrade = 0.0
        
        for student in students {
            sumAverageGrade += student.averageGrade
        }
        
        let averageGrade = sumAverageGrade / Double(students.count)
        
        print("Средний бал всех студентов в классе: \(averageGrade)")
    }
    
    init(students: [Student] = []) {
        self.students = students
    }
}
/*:
 ## Задание 2
 2.1 Создайте класс `Employee` (сотрудник) со следующими свойствами:
 
 - `salary`
 
 - `name`
 
 - `surname`
 */
class Employee {
    let salary: Int
    let name: String
    let surname: String
    
    init(salary: Int, name: String, surname: String) {
        self.salary = salary
        self.name = name
        self.surname = surname
    }
}
//: 2.2 Создайте массив `names` со следующими именами: *John*, *Aaron*, *Tim*, *Ted*, *Steven*. И еще один массив `surnames` со следующими фамилиями: *Smith*, *Dow*, *Isaacson*, *Pennyworth*, *Jankins*. Массивы должны быть созданы вне класса.
let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]
//: 2.3 Объявите массив `employees` и создайте цикл, в котором он заполняется десятью объектами класса `Employee` таким образом, что свойства `name` и `surname` инициализируются случайными именами и фамилиями из массивов `names` и `surnames`, соответственно. Свойство `salary` (зарплата) тоже должно генерироваться в случайном диапазоне от *$1000* до *$2000*
var employees: [Employee] = []

for _ in 1...10 {
    let nameIndex = Int.random(in: 0..<names.count)
    let surnameIndex = Int.random(in: 0..<surnames.count)
    let salary = Int.random(in: 1000...2000)
    
    let employee = Employee(
        salary: salary,
        name: names[nameIndex],
        surname: surnames[surnameIndex]
    )
    
    employees.append(employee)
}
//: 2.4 Переберите массив `employees` и выведите информацию по каждому сотруднику в виде: «<имя> <фамилия>’s salary is $<... >»
for employee in employees {
    print("\(employee.name) \(employee.surname)'s salary is \(employee.salary)")
}
print("------------------")
//: 2.5 Создайте еще один массив на основе `employees`, который включает только тех работников, чья зарплата чётная. Выведите информацию по каждому сотруднику с четной зарплатой, как в пункте 2.4
let evenSalaries = employees.filter{ $0.salary % 2 == 0 }

for employee in evenSalaries {
    print("\(employee.name) \(employee.surname)'s salary is \(employee.salary)")
}
