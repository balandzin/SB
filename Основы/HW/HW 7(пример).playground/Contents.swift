import UIKit

//: # Home Work 7

/*:
 ## Задание 1

 1. Создайте класс `Student`. В этом классе должны быть следующие свойства:
    - `name: String`: Имя студента. Это свойство должно быть инициализировано при создании объекта класса.
    - `age: Int`: Возраст студента. Это свойство также должно быть инициализировано при создании объекта класса.
    - `grades: [Int]: Оценки студента.
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
    
    var averageGrade: Double {
        let total = grades.reduce(0, +)
        return Double(total) / Double(grades.count)
    }
    
    var description: String {
        "\(name): \(averageGrade), \(getStatus())"
    }
    
    private var grades: [Int] = []
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func addGrade(_ grade: Int) {
        if (1...10).contains(grade) {
            grades.append(grade)
        }
    }
    
    private func getStatus() -> String {
        switch averageGrade {
        case 1.0..<4.0: "Underperforming"
        case 4.0..<7.0: "Average"
        case 7.0..<9.0: "Good"
        case 9.0...10.0: "Excellent"
        default: "New"
        }
    }
}

class Classroom {
    private var students: [Student]
    
    init(students: [Student] = []) {
        self.students = students
    }
    
    func addStudent(_ student: Student) {
        students.append(student)
    }

    func getAverageGrade() -> Double {
        let total = students.reduce(0.0) { $0 + $1.averageGrade }
        return total / Double(students.count)
    }
}

let alice = Student(name: "Alice", age: 20)
//alice.addGrade(7)
//alice.addGrade(8)
//alice.addGrade(6)
print(alice.description)  // Alice: 7.0, Good

let bob = Student(name: "Bob", age: 22)
bob.addGrade(9)
bob.addGrade(10)
print(bob.description)  // Bob: 9.5, Excellent

let classroom = Classroom(students: [alice, bob])
print("Classroom Average Grade: \(classroom.getAverageGrade())")  // Classroom Average Grade: 8.25

/*:
 ## Задание 2
 2.1 Создайте класс `Employee` (сотрудник) со следующими свойствами:
 
 - `salary`
 
 - `name`
 
 - `surname`
 */

class Employee {
    let name: String
    let surname: String
    let salary: Int
        
    init(name: String, surname: String, salary: Int) {
        self.name = name
        self.surname = surname
        self.salary = salary
    }
}
 
//: 2.2 Создайте массив `names` со следующими именами: *John*, *Aaron*, *Tim*, *Ted*, *Steven*. И еще один массив `surnames` со следующими фамилиями: *Smith*, *Dow*, *Isaacson*, *Pennyworth*, *Jankins*. Массивы должны быть созданы вне класса.

let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]

//: 2.3 Объявите массив `employees` и создайте цикл, в котором он заполняется десятью объектами класса `Employee` таким образом, что свойства `name` и `surname` инициализируются случайными именами и фамилиями из массивов `names` и `surnames`, соответственно. Свойство `salary` (зарплата) тоже должно генерироваться в случайном диапазоне от *$1000* до *$2000*

var employees: [Employee] = []

for _ in 1...10 {
    let employee = Employee(
        name: names.randomElement() ?? "",
        surname: surnames.randomElement() ?? "",
        salary: Int.random(in: 1000...2000)
    )
    
    employees.append(employee)
}

let evenEmployees = (1...10).map { _ in
    Employee(
        name: names.randomElement() ?? "",
        surname: surnames.randomElement() ?? "",
        salary: Int.random(in: 1000...2000)
    )
}

//: 2.4 Переберите массив `employees` и выведите информацию по каждому сотруднику в виде: «<имя> <фамилия>’s salary is $<... >»

for employee in employees {
    print("\(employee.name) \(employee.surname)’s salary is $\(employee.salary)")
}

//: 2.5 Создайте еще один массив на основе `employees`, который включает только тех работников, чья зарплата чётная. Выведите информацию по каждому сотруднику с четной зарплатой, как в пункте 2.4

/*
var employeesWithEvenSalary: [Employee] = []

for employee in employees {
    if employee.salary.isMultiple(of: 2) {
        employeesWithEvenSalary.append(employee)
    }
}
*/

let employeesWithEvenSalary = employees.filter { $0.salary.isMultiple(of: 2) }

print("\n Сотрудники с четной зарплатой \n")

employeesWithEvenSalary.forEach {
    print("\($0.name) \($0.surname)’s salary is $\($0.salary)")
}
