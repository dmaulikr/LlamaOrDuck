//
//  EndMenuController.swift
//  PracticeGame2
//
//  Created by Peter Kim on 8/22/17.
//  Copyright © 2017 Peter Kim. All rights reserved.
//

import Foundation
import UIKit

class EndMenuController: UIViewController {
    
    @IBOutlet weak var imageViewEnd: UIImageView!
    @IBOutlet weak var endYourScoreIs: UILabel!
    @IBOutlet weak var endScoreNumber: UILabel!
    
    let scoreFromGameScene = UserDefaults.standard.integer(forKey: "score")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageViewEnd.image = #imageLiteral(resourceName: "RainBowBackground")
        
        endScoreNumber.text = "Your score: \(scoreFromGameScene)"
        
    
    }
    
    
    @IBAction func buttonPlayAgain(_ sender: Any) {
        performSegue(withIdentifier: "goBackToGame", sender: self)
    }
    
    @IBAction func buttonBackToMain(_ sender: Any) {
        performSegue(withIdentifier: "goBackToMain", sender: self)
    }
    
    
    
}
