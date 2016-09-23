import Foundation

class Brain: NSObject {
    
    func isDivisibleByThree(_ number: Int) -> Bool {
        return isDivisibleBy(3, number)
    }
    
    func isDivisibleByFive(_ number: Int) -> Bool {
        return isDivisibleBy(5, number)
    }
    
    func isDivisibleByThreeAndFive(_ number: Int) -> Bool {
        return isDivisibleBy(15, number)
    }
    
    func isDivisibleBy(_ divisor: Int, _ number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func check(_ number: Int) -> Move {
        if isDivisibleByThreeAndFive(number) {
            return Move.FizzBuzz
        } else if isDivisibleByThree(number) {
            return Move.Fizz
        } else if isDivisibleByFive(number) {
            return Move.Buzz
        } else {
            return Move.Number
        }
    }
}
