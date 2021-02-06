//
//  DiceRollingViewController.swift
//  BasicApp
//
//  Created by Aabid Khan on 06/02/21.
//  Copyright © 2021 Aabid Khan. All rights reserved.
//

import UIKit

class DiceRollingViewController: UIViewController {

    @IBOutlet weak var imgDice: UIImageView!
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    @IBOutlet weak var dice3: UIImageView!
    @IBOutlet weak var dice4: UIImageView!
    @IBOutlet weak var dice5: UIImageView!
    
    private var historyArray = [Int]()
    override func viewDidLoad() {
        super.viewDidLoad()
        imgDice.isHidden = true
        dice1.isHidden = true
        dice2.isHidden = true
        dice3.isHidden = true
        dice4.isHidden = true
        dice5.isHidden = true
    }
    
    private func rollTheDice(){
        
        self.imgDice.alpha = 0
        imgDice.isHidden = false
        
        let randomInt = Int.random(in: 1..<7)
        //imgDice.image = UIImage(named: "dice-\(randomInt).png")
        historyArray.insert(randomInt, at: 0)
        
        UIView.animate(withDuration: 1) {
            self.imgDice.image = UIImage(named: "dice-\(randomInt).png")
            self.imgDice.alpha = 1.0
        }
        showHistory()
    }
    
    private func showHistory(){
        let count = historyArray.count
        
        for i in 1...count{
            switch i {
            case 1:
                dice1.isHidden = false
                break
            case 2:
                dice2.isHidden = false
                break
            case 3:
                dice3.isHidden = false
                break
            case 4:
                dice4.isHidden = false
                break
            case 5:
                dice5.isHidden = false
                break
            default:
                dice1.isHidden = false
            }
        }
        
        let finalArray = historyArray.prefix(5)
        for i in 0..<finalArray.count{
            let val = finalArray[i]
            switch i {
            case 0:
                dice1.image = UIImage(named: "dice-\(val).png")
                break
                
            case 1:
                dice2.image = UIImage(named: "dice-\(val).png")
                break
                
            case 2:
                dice3.image = UIImage(named: "dice-\(val).png")
                break
                
            case 3:
                dice4.image = UIImage(named: "dice-\(val).png")
                break
                
            case 4:
                dice5.image = UIImage(named: "dice-\(val).png")
                break
            default:
                dice1.isHidden = false
            }
        }
    }
    
    //MARK: - Actions -
    @IBAction func btnRollTapped(_ sender: Any) {
        rollTheDice()
    }
    
}
