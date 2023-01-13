
import XCTest


class RnaTranscriptionTests: XCTestCase {
    func testRnaComplementOfCytosineIsGuanine() {
        XCTAssertEqual("G", try Nucleotide("C").complementOfDNA())
    }
    func testRnaComplementOfGuanineIsCytosine() {
        XCTAssertEqual("C", try Nucleotide("G").complementOfDNA())
    }
    func testRnaComplementOfThymineIsAdenine() {
        XCTAssertEqual("A", try Nucleotide("T").complementOfDNA())
    }
    func testRnaComplementOfAdenineIsUracil() {
        XCTAssertEqual("U", try Nucleotide("A").complementOfDNA())
    }
    func testRnaComplement() {
        XCTAssertEqual("UGCACCAGAAUU", try Nucleotide("ACGTGGTCTTAA").complementOfDNA())
    }

    static var allTests: [(String, (RnaTranscriptionTests) -> () throws -> Void)] {
        return [
            ("testRnaComplementOfCytosineIsGuanine", testRnaComplementOfCytosineIsGuanine),
            ("testRnaComplementOfGuanineIsCytosine", testRnaComplementOfGuanineIsCytosine),
            ("testRnaComplementOfThymineIsAdenine", testRnaComplementOfThymineIsAdenine),
            ("testRnaComplementOfAdenineIsUracil", testRnaComplementOfAdenineIsUracil),
            ("testRnaComplement", testRnaComplement),
        ]
    }
}


