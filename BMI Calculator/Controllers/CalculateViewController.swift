//
//  ViewController.swift
//  BMI Calculator
//
//  Created by enes öztürk on 28.01.2023.

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let roundedH = String(format: "%.2f", sender.value)
        heightLabel.text = roundedH + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let roundedW = Int(sender.value)
        weightLabel.text = String(roundedW) + "Kg"
    }
    
    @IBOutlet var heightSlider: UISlider!
    
    @IBOutlet var weightSlider: UISlider!
    
    @IBOutlet var heightLabel: UILabel!
    
    @IBOutlet var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "goToResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}
