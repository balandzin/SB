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


let weekday: WeekDay = .friday

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


