
import Foundation

class Year{
    var calendarYear: Int
    var isLeapYear: Bool

    init (calendarYear: Int) {
        self.calendarYear = calendarYear
        self.isLeapYear = Year.isItLeapYear(calendarYear: calendarYear)
    }
    static func isItLeapYear(calendarYear year: Int) -> Bool {
        if year % 400 == 0 {
            print("\(year) is a leap year ")
            return true
        }
        else if year % 100 == 0 {
            print("The year \(year) is not leap year .")
            return false
        } else if year % 4 == 0 {
            print("\(year) is a leap year ")
            return true
        } else {
            return false
        }
    }
}
