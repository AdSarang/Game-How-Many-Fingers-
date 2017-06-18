//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Advait on 18/06/17.
//  Copyright © 2017 Advait. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultText: UILabel!
    @IBAction func guessButtonPressed(_ sender: Any) {
        let randomInt = Int(arc4random_uniform(6))
        let stringChecker = Int(userInput.text!)
        if let userGuess = stringChecker{
            
            if(userGuess == randomInt){
                resultText.text = "You're Right!"
            }
            else{
                resultText.text="Wrong! The number was \(randomInt)"
            }
        }
    }
    @IBOutlet weak var userInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    

}

