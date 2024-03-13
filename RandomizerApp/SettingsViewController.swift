//
//  SettingsViewController.swift
//  RandomizerApp
//
//  Created by OSIIOSdev on 12.03.2024.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet var minimumValueTextField: UITextField!
    @IBOutlet var maximumValueTextField: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minimumValueTextField.text = minimumValue
        maximumValueTextField.text = maximumValue
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
}
