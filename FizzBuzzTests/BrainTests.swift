import XCTest

@testable import FizzBuzz

class BrainTests: XCTestCase {
    
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {    
        super.tearDown()
    }
    
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleByThree(1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(5)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFive() {
        let result = brain.isDivisibleByFive(1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByThreeAndFive() {
        let result = brain.isDivisibleByThreeAndFive(15)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThreeAndFive() {
        let result = brain.isDivisibleByThreeAndFive(1)
        XCTAssertEqual(result, false)
    }
    
    func testSayFizz() {
        let result = brain.check(3)
        XCTAssertEqual(result, Move.Fizz)
    }
    
    func testSayBuzz() {
        let result = brain.check(5)
        XCTAssertEqual(result, Move.Buzz)
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(15)
        XCTAssertEqual(result, Move.FizzBuzz)
    }
    
    func testSayNumber() {
        let result = brain.check(1)
        XCTAssertEqual(result, Move.Number)
    }
}
