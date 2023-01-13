

import Foundation

struct Clock {
   private let hours: Int
   private let minutes: Int
    
    init(hours: Int = 0, minutes: Int = 0) {
        var totalMinutes = (hours * 60 + minutes) % 1440
        if totalMinutes < 0 {
            totalMinutes += 1440
        }
        (self.hours, self.minutes) = (totalMinutes / 60, totalMinutes % 60)
    }
    func add(minutes: Int) -> Clock {
        Clock(hours: hours, minutes: self.minutes + minutes)
    }
    func subtract(minutes: Int) -> Clock {
        self.add(minutes: -minutes)
    }
}

extension Clock: CustomStringConvertible, Equatable {
    var description: String {
        String(format: "%02d:%02d", hours, minutes)
    }
}

