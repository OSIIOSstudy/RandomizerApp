//
//  SettingsViewController.swift
//  RandomizerApp
//
//  Created by OSIIOSdev on 12.03.2024.
//

import UIKit

final class SettingsViewController: UIViewController {
    // MARK: - @IBOutlets
    @IBOutlet var minimumValueTextField: UITextField!
    @IBOutlet var maximumValueTextField: UITextField!
    
    // MARK: - Properties
    var minimumValue: String!
    var maximumValue: String!
    
    // MARK: - LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minimumValueTextField.text = minimumValue
        maximumValueTextField.text = maximumValue
    }
    
    // MARK: - @IBAction Methods
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
}
