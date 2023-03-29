//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by enes öztürk on 28.01.2023.

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet var bmiLabel: UILabel!
    
    @IBOutlet var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func RecalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
