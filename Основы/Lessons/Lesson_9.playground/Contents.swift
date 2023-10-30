import UIKit

// Урок 9. Перечисления

/*
 - Синтаксис перечислений
     - Возможность перечислений
     - Исходные значения кейсов перечислений
     - Инициализация
     - Связанные значения (ассоциированные параметры)
*/

enum WeekDay {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}


var weekday: WeekDay = .friday

func setupAlarm(for weekday: WeekDay) {
    switch weekday {
    case .monday, .tuesday:
        print("8 am")
    case .wednesday:
        print("8.30 am")
    case .thursday:
        print("9 am")
    case .friday:
        print("10 am")
    default:
        print("11 am")
    }
}


enum Country: Double {
    case usa = 1
    case russia
    case china
    case belarus
}

let country: Country = .china

print("country - \(country.rawValue)")

// инициализация
let possibleCountry = Country(rawValue: 2)

// связанные значения

enum WeekDay2 {
    case workday(message: String, time: Int)
    case weekend(message: String)
}

let workday: WeekDay2 = .workday(message: "Set alarm to", time: 8)

func setAlarm(for weekday: WeekDay2) {
    switch weekday {
    case .workday(let message, let time):
        print("\(message) \(time)")
    case .weekend(let message):
        print("\(message)")

    }
}

setAlarm(for: workday)
