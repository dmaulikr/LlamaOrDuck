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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageViewEnd.image = #imageLiteral(resourceName: "RainBowBackground")
    
    }
}
