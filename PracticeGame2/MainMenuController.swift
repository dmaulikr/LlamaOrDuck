//
//  ViewController.swift
//  PracticeGame2
//
//  Created by Peter Kim on 8/22/17.
//  Copyright © 2017 Peter Kim. All rights reserved.
//

import UIKit

class MainMenuController: UIViewController {

    @IBOutlet weak var pushButton: UIButton!
    @IBOutlet weak var imageViewBackground: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageViewBackground.image = #imageLiteral(resourceName: "MainPagePicture2")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pushButtonTouchUpInside(_ sender: Any) {
        performSegue(withIdentifier: "goToGameSegue", sender: self)
    }
    
    
}

    


