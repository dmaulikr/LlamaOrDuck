//
//  HowToPlayController.swift
//  PracticeGame2
//
//  Created by Peter Kim on 8/22/17.
//  Copyright © 2017 Peter Kim. All rights reserved.
//

import Foundation
import UIKit

class HowToPlayController: UIViewController {
    @IBOutlet weak var imageViewHow: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageViewHow.image = #imageLiteral(resourceName: "RainBowBackground")
        
    }
    
    @IBAction func pushButtonBackToMain(_ sender: Any) {
        performSegue(withIdentifier: "goToMainMenu", sender: self)
    }
    
}

