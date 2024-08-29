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

    @IBAction func incrementButton(_ sender: Any) {
        
        currentNumber += 1
        number.text = "\(currentNumber)"
    }
    
    @IBAction func decrementButton(_ sender: Any) {
        
        currentNumber -= 1
        number.text = "\(currentNumber)"
    }
}

