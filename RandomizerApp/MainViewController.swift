//
//  ViewController.swift
//  RandomizerApp
//
//  Created by OSIIOSdev on 12.03.2024.
//

import UIKit

final class MainViewController: UIViewController {
    // MARK: - @IBOutlets
    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    
    @IBOutlet var randomValueLabel: UILabel!
    
    @IBOutlet var getResultButton: UIButton!
    
    // MARK: - LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomValueLabel.text = "?"
        getResultButton.layer.cornerRadius = 10
    }
    
    // MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsViewController = segue.destination as? SettingsViewController else { return }
        settingsViewController.minimumValue = minimumValueLabel.text
        settingsViewController.maximumValue = maximumValueLabel.text
    }
    
    // MARK: - @IBAction Methods
    @IBAction func getResultButtonPressed() {
        let minimumValue = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumValue = Int(maximumValueLabel.text ?? "") ?? 100
        
        randomValueLabel.text = Int.random(in: minimumValue...maximumValue).formatted()
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard let settingsViewController = segue.source as? SettingsViewController else { return }
        minimumValueLabel.text = settingsViewController.minimumValueTextField.text
        maximumValueLabel.text = settingsViewController.maximumValueTextField.text
    }
}

