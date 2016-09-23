import XCTest

@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        let _ = game.play(Move.Number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfFizzMoveIsRight() {
        game.score = 2
        let response = game.play(Move.Fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzMoveIsWrong() {
        game.score = 1
        let response = game.play(Move.Fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzMoveIsRight() {
        game.score = 4
        let response = game.play(Move.Buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfBuzzMoveIsWrong() {
        game.score = 1
        let response = game.play(Move.Buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        let response = game.play(Move.FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzBuzzMoveIsWrong() {
        game.score = 1
        let response = game.play(Move.FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfNumberMoveIsRight() {
        game.score = 1
        let response = game.play(Move.Number)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberMoveIsWrong() {
        game.score = 2
        let response = game.play(Move.Number)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        let _ = game.play(Move.Fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(Move.Number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(Move.Number)
        XCTAssertNotNil(response.score)
    }
    
}
