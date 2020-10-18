//
//  ViewController.swift
//  Alert-ActionSheetPopup
//
//  Created by Pratik Zora on 2020-10-12.
//

import UIKit

class ViewController: UIViewController {
    
    // Create Alert Message
    
    @IBAction func alertAction(_ sender: UIButton) {
        
        let alertTapped = UIAlertController(title: "This is Alert", message: "This is Alert Message", preferredStyle: .alert)
        
        // Add text field to Alert message
        alertTapped.addTextField { (textField) in
            textField.placeholder = "Enter your name"
        }
        
        // Add Cancel button to Alert Message
        
        let cancelButton = UIAlertAction(title:"Cancel Button", style: .cancel) { (action) in
            print("User has tapped Cancel Button")
        }
        
        let defaultButton = UIAlertAction(title:"Default Button", style: .default) { (action) in
            print("User has tapped Default Button")
            
            // Check that text field is not nil and print the text field text while user press default button
            
            if alertTapped.textFields?.first?.text != nil {
                print(alertTapped.textFields!.first!.text!)
            }
        }
        
        let destructiveButton = UIAlertAction(title: "Destructive Button", style: .destructive) { (action) in
            print("User has tapped Destructive Button")
        }
        
        // Add created buttons to message
        alertTapped.addAction(cancelButton)
        alertTapped.addAction(defaultButton)
        alertTapped.addAction(destructiveButton)
        
        // Present Alert Message
        present(alertTapped, animated: true, completion: nil)
        
    } // End alertAction

    // Create ActionSheet Message
    @IBAction func actionSheet(_ sender: UIButton) {
        
        let actionSheetMessage = UIAlertController(title: "This is ActionSheet", message: "This is ActionSheet Message", preferredStyle: .actionSheet)
        
        // Add Cancel button to ActionSheet Message
        let cancelButton = UIAlertAction(title:"Cancel Button", style: .cancel) { (action) in
            print("User has tapped Cancel Button")
        }
        
        let defaultButton = UIAlertAction(title:"Default Button", style: .default) { (action) in
            print("User has tapped Default Button")
        }
        
        let destructiveButton = UIAlertAction(title: "Destructive Button", style: .destructive) { (action) in
            print("User has tapped Destructive Button")
        }
         
        // Add created buttons to message
        
        actionSheetMessage.addAction(cancelButton)
        actionSheetMessage.addAction(defaultButton)
        actionSheetMessage.addAction(destructiveButton)
        
        // Present Alert Message
        present(actionSheetMessage, animated: true, completion: nil)
        
    } // End actionSheet

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

