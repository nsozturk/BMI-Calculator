//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by enes öztürk on 28.01.2023.

import UIKit

struct CalculatorBrain {
    var bmi: BMI?

    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "daha çok yemelisin", color: UIColor.blue)

        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "kilon normal", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "yemeyi bırak!", color: UIColor.red)
        }
//        bmi = BMI(value: bmiValue, advice: <#T##String#>, color: T##UIColor)
    }

    func getAdvice() -> String {
        return bmi?.advice ?? "hatalı bir işlem yaptınız!"
    }

    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
