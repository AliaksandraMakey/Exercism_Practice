

import Foundation

struct DNA {

    var strand: String
    static var nucleotides: [Character] = ["A", "C", "G", "T"]

    init?(strand: String) {
        guard strand.allSatisfy({ DNA.nucleotides.contains($0) }) else {
            return nil
        }
        self.strand = strand
    }

    func count(_ element: Character) -> Int {
        return strand.filter { $0 == element }.count
    }

    func counts() -> [String : Int]{
        return  ["T": count("T"), "A": count("A"), "C": count("C"), "G": count("G")]
    }
}

