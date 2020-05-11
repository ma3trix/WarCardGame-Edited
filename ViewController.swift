

import UIKit

class ViewController: UIViewController {
    
    
    //
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    @IBOutlet weak var diceLeftScoreLabel: UILabel!
    @IBOutlet weak var rightDiceScoreLabel: UILabel!
    
    // card score
    var leftScore = 0
    var rightScore = 0
    
    //Dice logic

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]




    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    // dice deal tapped function

    @IBAction func diceDealTapped(_ sender: Any) {
        
        //randomize some numbers
        let leftNumber = Int.random(in: 1...6)
        let rightNumber = Int.random(in: 1...6)
        //randomize dice variable
            randomDiceIndex1 = Int.random(in: 1...6)
            randomDiceIndex2 = Int.random(in: 1...6)
            
            diceImageView1.image = UIImage(named: "dice\(leftNumber)")
            diceImageView2.image = UIImage(named: "dice\(rightNumber)")
        
            //compare the random numbers
            if leftNumber > rightNumber {
                
                // left side wins
                leftScore += 1
                diceLeftScoreLabel.text = String(leftScore)
                
            }
                
            else if leftNumber < rightNumber {
                
                // right side wins
                rightScore += 1
                rightDiceScoreLabel.text = String(rightScore)
                
                
            }
                
            else{
                //Tie
            }
        
    }
    
    
    @IBAction func restDice(_ sender: Any) {
        
        if leftScore > rightScore || rightScore > leftScore || leftScore == rightScore {
            
            diceLeftScoreLabel.text = String(0)
            leftScore = 0
            diceImageView1.image = UIImage(named: ("dice1"))
            
            rightDiceScoreLabel.text = String(0)
            rightScore = 0
            diceImageView2.image = UIImage(named: ("dice1"))
            
        }
        
    }
    
    
    
    
    
    
    // card deal tapped function
    @IBAction func dealTapped(_ sender: Any) {
        
        //randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        //Update the image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //compare the random numbers
        if leftNumber > rightNumber {
            
            // left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        }
            
        else if leftNumber < rightNumber {
            
            // right side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            
            
        }
            
        else{
            //Tie
        }
    }
    
    @IBAction func Reset(_ sender: Any) {
        
        if leftScore > rightScore || rightScore > leftScore || leftScore == rightScore {
            
            leftScoreLabel.text = String(0)
            leftScore = 0
            leftImageView.image = UIImage(named: ("back"))

             rightScoreLabel.text = String(0)
             rightScore = 0
             rightImageView.image = UIImage(named: ("back2"))
            
        }
    
    }
    
}

