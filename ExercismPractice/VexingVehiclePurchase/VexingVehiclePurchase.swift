
import Foundation

func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let monthPriceCar = price / 60
    let monthlyBudgetWithPercent = monthlyBudget  * 10 / 100 + monthlyBudget
    if monthPriceCar < monthlyBudget {
        return "Yes! I'm getting a " + vehicle
    } else if  monthPriceCar >= monthlyBudget && monthPriceCar <= monthlyBudgetWithPercent {
        return "I'll have to be frugal if I want a " + vehicle
    } else {
        return "Darn! No " + vehicle + " for me"
    }
}
func licenseType(numberOfWheels: Int) -> String {
    switch numberOfWheels {
    case 2, 3:
        return "You will need a motorcycle license for your vehicle"
    case 4, 6:
        return "You will need an automobile license for your vehicle"
    case 18:
        return "You will need a commercial trucking license for your vehicle"
    default:
        return "We do not issue licenses for those types of vehicles"
    }
}
func registrationFee(msrp: Double, yearsOld: Int) -> Int {
    var cost = 0.0
    if msrp < 25000 {
        cost = 25000
    } else {
        cost = msrp
    }
    if yearsOld > 1 && yearsOld < 10   {
        let fee = (cost - cost / 100 * Double(yearsOld) * 10) / 100
        return Int(fee)
    } else  if  yearsOld >= 10 {
        return 25
    } else {
        let fee =  cost / 100
        return Int(fee)
    }
}

