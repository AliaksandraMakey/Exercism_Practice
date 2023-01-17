
import Foundation

class SpaceAge {
    var seconds: Double
    init(_ seconds: Double)  {
        self.seconds = seconds
    }
    var onEarth: Double {
           seconds / 31557600
       }
    var onMercury: Double {
        seconds / (31557600 * 0.2408467)
    }
    var onVenus: Double {
        seconds / (31557600 * 0.61519726)
    }
    var onMars: Double {
        seconds / (31557600 * 1.8808158)
    }
    var onJupiter: Double {
        seconds / (31557600 * 11.862615 )
    }
    var onSaturn: Double {
        seconds / (31557600 * 29.447498)
    }
    var onUranus: Double {
        seconds / (31557600 * 84.016846)
    }
    var onNeptune: Double {
        seconds / (31557600 * 164.79132)
    }
}
