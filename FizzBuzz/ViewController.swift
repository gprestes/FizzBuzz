import UIKit

class ViewController: UIViewController {
    
    var game: Game?
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    
    @IBOutlet weak var FizzBuzzButton: UIButton!
    
    var gameScore: Int? {
        didSet {
            guard let unwrappedGameScore = gameScore else {
                return
            }
            
            numberButton.setTitle(String(unwrappedGameScore), for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        guard let unwrappedGame = game else {
            return
        }
        
        gameScore = unwrappedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func play(_ move: Move) {
        guard let unwrappedGame = game else {
            return
        }
        let response = unwrappedGame.play(move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case numberButton:
            play(Move.Number)
        case fizzButton:
            play(Move.Fizz)
        case buzzButton:
            play(Move.Buzz)
        case FizzBuzzButton:
            play(Move.FizzBuzz)
        default:
            print("Invalid selection")
        }
    }
}
