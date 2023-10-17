import UIKit

//: # Lesson 9
//: ## Перечисления

var someDay = "Monday"

func setupAlarm(for day: String) {
    if day == "Monday" || day == "Tuesday" {
        print("Today is \(day). The alarm is set at 8 am")
    } else {
        print("Today is \(day). Alarm not set")
    }
}

setupAlarm(for: someDay)
someDay = "tusday"
setupAlarm(for: someDay)

/*:
    enum EnumerationName {
        case enumeration
    }
 
 */

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

var weekday: Weekday = .monday

//: ### Использование инструкции Switch

func setupAlarm(for weekday: Weekday) {
    switch weekday {
    case .monday, .tuesday:
        print("The alarm is set at 8 am")
    case .wednesday:
        print("The alarm is set at 8:30 am")
    case .thursday:
        print("The alarm is set at 7:30 am")
    case .friday:
        print("Yay! TGIF!")
    default:
        print("Weekend. Alarm not set")
    }
}

setupAlarm(for: weekday)
weekday = .friday
setupAlarm(for: weekday)

//: ### Исходные значения

enum Country: String {
    case usa = "USA"
    case russia = "Russia"
    case china
}

let country: Country = .china
print("case title: \(country)")
print("case value: \(country.rawValue)")

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
}

let planet: Planet = .earth
print("\(planet) is the \(planet.rawValue) planet from the sun")

//: ### Инициализация

let possiblePlanet = Planet(rawValue: 0)

//: ### Связанные значения (ассоциированные параметры)

enum WeekdayV2 {
    case workday(message: String, time: Int)
    case weekend(message: String)
}

var workday: WeekdayV2 = .workday(message: "Set alarm to", time: 8)

func setAlarm(for weekday: WeekdayV2) {
    switch workday {
    case .workday(let message, let time):
        print("\(message) \(time) am")
    case .weekend(let message):
        print(message)
    }
}

setAlarm(for: workday)
workday = .weekend(message: "Alarm not set")
setAlarm(for: workday)
