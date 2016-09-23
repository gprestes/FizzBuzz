import Foundation

class Game: NSObject {
    
    var score: Int
    let brain: Brain
    
    override init() {
        score = 0
        brain = Brain()
        super.init()
    }
    
    func play(_ move: Move) -> (right: Bool, score: Int) {
        
        let result = brain.check(score+1)
        
        if result == move {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
}
