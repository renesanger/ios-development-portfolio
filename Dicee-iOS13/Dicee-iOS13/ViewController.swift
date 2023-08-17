//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DiceImageView1: UIImageView!
    @IBOutlet weak var DiceImageView2: UIImageView!

    @IBAction func rollButtonPressed(_ sender: Any) {
        let leftDiceImage = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
        let rightDiceImage = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
//        DiceImageView1.image = UIImage(imageLiteralResourceName: leftDiceImage.randomElement() ?? "<none>")
//        DiceImageView2.image = UIImage(imageLiteralResourceName: rightDiceImage.randomElement() ?? "<none>")
        
        DiceImageView1.image = UIImage(imageLiteralResourceName: leftDiceImage[Int.random(in: 0...5)])
        DiceImageView2.image = UIImage(imageLiteralResourceName: rightDiceImage[Int.random(in: 0...5)])
    }
    
}

