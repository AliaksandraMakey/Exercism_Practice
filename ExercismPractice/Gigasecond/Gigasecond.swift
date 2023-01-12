

import Foundation

class Gigasecond {

    static let formatter = DateFormatter()
    static let pattern = "YYYY-MM-dd'T'HH:mm:ss"
    static let timezone = TimeZone(secondsFromGMT: 0)
    static let seconds = 1000000000.0
    var description: String

    init?( from: String ) {
        Gigasecond.formatter.dateFormat = Gigasecond.pattern
        Gigasecond.formatter.timeZone = Gigasecond.timezone
        guard let date = Gigasecond.formatter.date(from: from)?.addingTimeInterval(Gigasecond.seconds) else {return nil}
        self.description = Gigasecond.formatter.string(from: date)
    }
}
//let gs = Gigasecond(from: "1959-07-19T00:00:00")?.description
let gs = Gigasecond(from: "1959-07-19T00:00:00")
let descrript = gs?.description
