//
//  UIViewControllerExtension.swift
//  CounterUIKit
//
//  Created by Abouzar Moradian on 8/30/24.
//

import UIKit

extension UIViewController {
    
    func showAlert(title: String, message: String? = nil, actions: [UIAlertAction]){
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        if actions.isEmpty {
            let alertAction = UIAlertAction(title: "Ok", style: .default)
            alertController.addAction(alertAction)
        }else{
            for action in actions {
                alertController.addAction(action)
            }
        }
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    func showAlertInput(title: String, message: String, placeholder: String, keyboardType: UIKeyboardType = .default, submissionAction: @escaping (String?) -> Void){
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alertController.addTextField { textField in
            textField.placeholder = placeholder
            textField.keyboardType = keyboardType
        }
        
        let action = UIAlertAction(title: "Submit", style: .default) { _ in
            let inputText = alertController.textFields?.first?.text
            submissionAction(inputText)
        }
        
        alertController.addAction(action)
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                
        self.present(alertController, animated: true, completion: nil)

    }
}

