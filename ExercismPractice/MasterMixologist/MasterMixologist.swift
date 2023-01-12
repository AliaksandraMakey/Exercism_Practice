
import Foundation

func timeToPrepare(drinks: [String]) -> Double {
    var time = 0.0
    for d in drinks{
            if d == "beer" || d == "soda" || d == "water"{
                time += 0.5
            } else if d == "shot" {
                time += 1
            } else if d == "mixed drink" {
                time += 1.5
            } else if d == "fancy drink" {
                time += 2.5
            }  else if d == "frozen drink" {
                time += 3.0
            }
      }
    return time
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    var allSlices: Int = 0
    var allLimes: Int = 0

    if needed == 0 {
        return 0
    }

    for lime in limes {
        allLimes += 1

        if lime == "small" {
            allSlices += 6
        } else if lime == "medium" {
            allSlices += 8
        } else if  lime == "large"{
            allSlices += 10
        }
        if ( allSlices >= needed ) {
            break;
        }
    }
    return allLimes
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    guard minutesLeft > 0 && !remainingOrders.isEmpty else { return remainingOrders }
    var orders = remainingOrders
    var allTime = 0.0
    for order in orders {
      let time =  timeToPrepare(drinks: order)
        allTime += time
        orders.removeFirst()
        if Double(minutesLeft) <= allTime {
            break;
        }
    }
    return orders
}



func orderTracker(orders: [(drink: String, time: String)]) ->
(beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?) {
    var beerAndSoda: (beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?) = (beer: nil, soda: nil)

    let beerTimes = orders.filter({ $0.drink == "beer" }).map({ $0.time }).sorted()
       if let first = beerTimes.first, let last = beerTimes.last {
           beerAndSoda.beer = (first: first, last: last, total: beerTimes.count)
       }
    let sodaTimes = orders.filter({ $0.drink == "soda" }).map({ $0.time }).sorted()
       if let first = sodaTimes.first, let last = sodaTimes.last {
           beerAndSoda.soda = (first: first, last: last, total: sodaTimes.count)
       }
    return beerAndSoda
}


