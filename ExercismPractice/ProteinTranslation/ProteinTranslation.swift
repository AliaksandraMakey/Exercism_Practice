
import Foundation

enum OperationsError: Error {
    case InvalidCodons
}
struct ProteinTranslation {
    
    static func translationOfCodon(_ codons: String) throws -> String {
        var protein = String()
        switch codons {
        case "AUG":
            protein = "Methionine"
        case "UUU", "UUC":
            protein = "Phenylalanine"
        case "UUA", "UUG":
            protein = "Leucine"
        case "UCU", "UCC", "UCA", "UCG":
            protein = "Serine"
        case "UAU", "UAC" :
            protein = "Tyrosine"
        case "UGU", "UGC":
            protein = "Cysteine"
        case "UGG":
            protein = "Tryptophan"
        case "UAA", "UAG", "UGA":
            protein = "STOP"
        default:
            throw OperationsError.InvalidCodons
        }
        return protein
    }
    static func translationOfRNA(_ rna: String) throws -> [String] {
        var codons = String()
        var proteins = [String]()
        for (item, char) in rna.enumerated() {
            if item.isMultiple(of: 3) && item != 0 {
                codons += "-" + String(char)
            } else {
                codons += String(char)
            }
        }
        let elements = codons.components(separatedBy: "-")
        for element in elements {
            let protein = try translationOfCodon(element)
            if protein == "STOP" {
                break
            } else {
                proteins.append(protein)
            }
        }
        return proteins
    }
}
