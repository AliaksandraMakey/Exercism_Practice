

import Foundation


enum TranscriptionError : Error {
    case invalidNucleotide(_ message: String)
}

class Nucleotide {
    var strandDNA: String
    init(_ strandDNA: String) {
        self.strandDNA = strandDNA
    }

    func complementOfDNA() throws -> String {
        try strandDNA.map { (element) -> String in
            switch element {
            case "C":
                return "G"
            case "G":
                return "C"
            case "T":
                return "A"
            case "A":
                return "U"
            default:
                throw TranscriptionError.invalidNucleotide("\(element) is not a valid Nucleotide")
            }
        }.joined()
    }
}
