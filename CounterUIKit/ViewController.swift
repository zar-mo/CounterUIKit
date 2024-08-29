//
//  ViewController.swift
//  CounterUIKit
//
//  Created by Abouzar Moradian on 8/29/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        number.text = "10"
        
        
    }

    @IBAction func incrementButton(_ sender: Any) {
        
        guard let currentNumStr = number?.text, let currentNumber = Int(currentNumStr) else { return }
        number?.text = String(currentNumber + 1)
    }
    
    @IBAction func decrementButton(_ sender: Any) {
        
        guard let currentNumStr = number?.text, let currentNumber = Int(currentNumStr) else { return }
        number?.text = String(currentNumber - 1)
    }
}

