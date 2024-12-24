//
//  ViewController.swift
//  AlertControllerDemo
//
//  Created by Mac on 24/12/24.
//
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func AlertConterollerbtn(_ sender: Any) {
    
        // Create UIAlertController
        let alertController = UIAlertController(
            title: "Simple Alert",
            message: "Do you want to Submit?",
            preferredStyle: .alert
        )
        
        // Add text fields to the alert
        alertController.addTextField { textField in
            textField.placeholder = "Enter Name"
        }
        alertController.addTextField { textField in
            textField.placeholder = "Enter Password"
        }
        
        // Create Submit action
        let submitAction = UIAlertAction(title: "Submit", style: .default) { action in
            print("Submit button tapped")
        }
        
        // Create Cancel action
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
            print("Cancel button tapped")
        }
        
        // Create Delete action
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { action in
            print("Delete button tapped")
        }
        
        // Add actions to the alert
        alertController.addAction(submitAction)
        alertController.addAction(cancelAction)
        alertController.addAction(deleteAction)
        
        // Present the alert
        self.present(alertController, animated: true)
    }
}
