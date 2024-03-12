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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
}
