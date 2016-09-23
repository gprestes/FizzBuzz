import XCTest

@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()

        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMove1IncrementScore() {
        viewController.play(Move.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore() {
        viewController.play(Move.Number)
        viewController.play(Move.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(Move.Fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play(Move.Buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 14
        viewController.play(Move.FizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testWrongMoveNotIncrementScore() {
        viewController.play(Move.Fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 0)
    }
}
