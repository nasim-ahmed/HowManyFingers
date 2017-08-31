//
//  ViewController.swift
//  HowManyFingers?
//
//  Created by Research on 8/30/17.
//  Copyright © 2017 HealthDiary. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputField.keyboardType = .decimalPad
        
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard(){
        view.endEditing(true)
    }

    @IBAction func guessButton(_ sender: UIButton) {
        
        
        // Generate random number between 1 and 5
        let randomNumber = arc4random_uniform(6)
        let guessednumber = Int(inputField.text!)
        
        if guessednumber != nil{
            if Int(randomNumber) == guessednumber{
                self.resultLabel.text = "Correct"
            }else{
                self.resultLabel.text = "Nope! It was \(randomNumber)"
            
            }
        }else{
            resultLabel.text = "Please enter a number between 0-5"
        
        }
        
    }
    

}

