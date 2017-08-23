//
//  GameController.swift
//  PracticeGame2
//
//  Created by Peter Kim on 8/22/17.
//  Copyright © 2017 Peter Kim. All rights reserved.
//

import Foundation
import UIKit

class GameController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scoreTitle: UILabel!
    @IBOutlet weak var timerTitle: UILabel!
    
    var imageType = 0
    var score = 0
    var time = 20
    let imageCount = 3
    let llamaImages = [#imageLiteral(resourceName: "Llama1"), #imageLiteral(resourceName: "Llama2"), #imageLiteral(resourceName: "Llama3")]
    let duckImages = [#imageLiteral(resourceName: "Duck1"), #imageLiteral(resourceName: "Duck2"), #imageLiteral(resourceName: "Duck3")]
   
    
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
        print("You've entered the game")
        imageView.image = #imageLiteral(resourceName: "Llama1")
        
        let _ = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {
            (t) in
            self.time = self.time - 1
            self.updateTimeText()
            
        }
        
    }
    
    func updateTimeText(){
        if (self.time == 0){
            
            performSegue(withIdentifier: "goToEndMenuSegue", sender: self)
        }
        timerTitle.text = "Time: \(self.time)"
        
    }
    
    
    func changeImages(){
        let randomImage = Int(arc4random_uniform(UInt32(imageCount)))
            imageType = Int(arc4random_uniform(UInt32(2)))
        
        if (imageType == 0){
            //change to random llama image
            imageView.image = llamaImages[randomImage]
        } else {
            //change to random duck image
            imageView.image = duckImages[randomImage]
        }

        
    }
    
    
    
    @IBAction func LlamaButtonTouchInside(_ sender: Any) {
        if (imageType == 0){
            print("Correct!")
            score = score + 1
        } else {
            print("Wrong!")
        }
        print("Score: \(score)")
        scoreTitle.text = "Score: \(score)"
        
        changeImages()
        
    }
    
    @IBAction func DuckButtonTouchInside(_ sender: Any) {
        if (imageType == 1){
            print("Correct!")
            score = score + 1
        } else {
            print("Wrong!")
        }
        print("Score: \(score)")
        scoreTitle.text = "Score: \(score)"
        changeImages()
    }
    
}

