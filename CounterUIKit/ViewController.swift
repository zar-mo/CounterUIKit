//
//  ViewController.swift
//  CounterUIKit
//
//  Created by Abouzar Moradian on 8/29/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UILabel!
    var currentNumber: Int = 10
    
    
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        number.text = "\(currentNumber)"
        
        
        
        
    }

    @IBAction func setNumberButton(_ sender: Any) {
        
        showAlertInput(title: "Enter your desired number", message: "", placeholder: "Number", keyboardType: .numberPad) { [weak self] inputString in
            if let text = inputString, let newNumber = Int(text){
                self?.currentNumber = newNumber
                self?.number.text = "\(newNumber)"
            }
        }
    }
    @IBAction func incrementButton(_ sender: Any) {
        
        currentNumber += 1
               number.text = "\(currentNumber)"
               if currentNumber > 15 {
                   let resetAction = UIAlertAction(title: "Reset", style: .default) { [weak self] _ in
                       self?.currentNumber = 10
                       self?.number.text = "\(self?.currentNumber ?? 10)"
                   }
                   let ignoreAction = UIAlertAction(title: "Ignore", style: .cancel, handler: nil)
                   showAlert(title: "Number Exceeded", message: "The number has reached its maximum value!", actions: [resetAction, ignoreAction])
               }
    }
    
    @IBAction func decrementButton(_ sender: Any) {
        
        currentNumber -= 1
        number.text = "\(currentNumber)"
    }
}

