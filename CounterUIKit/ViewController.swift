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
    
    let alertController = UIAlertController(title: "Number Exceeded", message: "The number has reached its maximum value!", preferredStyle: .alert)
    let alertControllerTextField = UIAlertController(title: "Enter your desired number", message: "", preferredStyle: .alert)
    var ignoreAction: UIAlertAction!
    var resetAction: UIAlertAction!
    var submitAction: UIAlertAction!
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        number.text = "\(currentNumber)"
        
        ignoreAction = UIAlertAction(title: "Ignore", style: .default) { _ in }
        resetAction = UIAlertAction(title: "Reset", style: .cancel) { [weak self] _ in
            self?.currentNumber = 10
            self?.number.text = "\(self?.currentNumber ?? 10)"
        }
        
        alertControllerTextField.addTextField { textField in
            textField.placeholder = "Number"
            textField.keyboardType = .numberPad
        }
        
        submitAction = UIAlertAction(title: "Submit", style: .default, handler: { [weak self] _ in
                   if let text = self?.alertControllerTextField.textFields?.first?.text,
                      let newNumber = Int(text) {
                       self?.currentNumber = newNumber
                       self?.number.text = "\(newNumber)"
                       self?.alertControllerTextField.textFields?.first?.text = ""
                   }
               })
        
        alertControllerTextField.addAction(submitAction)
               
        alertController.addAction(ignoreAction)
        alertController.addAction(resetAction)

        
        
    }

    @IBAction func setNumberButton(_ sender: Any) {
        
        present(alertControllerTextField, animated: true)
    }
    @IBAction func incrementButton(_ sender: Any) {
        
        currentNumber += 1
        number.text = "\(currentNumber)"
        if currentNumber > 15 {
            present(alertController, animated: true) {
                
            }
        }
    }
    
    @IBAction func decrementButton(_ sender: Any) {
        
        currentNumber -= 1
        number.text = "\(currentNumber)"
    }
}

