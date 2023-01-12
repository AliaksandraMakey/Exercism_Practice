

import Foundation

func dailyRateFrom(hourlyRate: Int) -> Double {
    return Double(hourlyRate * 8)
}
func monthlyRateFrom(hourlyRate: Int, withDiscount: Double) -> Double {
    let monthly = dailyRateFrom(hourlyRate: hourlyRate) * 22
    let discounts = monthly / 100 * withDiscount
    let monthlyRate = monthly - discounts
    return monthlyRate.rounded()
}
func workdaysIn(budget: Int, hourlyRate: Int, withDiscount: Double) -> Double {
    let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
    let days = Double(budget) / (dailyRate -  dailyRate / 100 * withDiscount)
      return days.rounded(.down)
}
