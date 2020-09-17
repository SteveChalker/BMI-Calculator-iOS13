//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Stephen Chalker on 5/30/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculate(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
 
        if (bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else if (bmiValue >= 25) {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String? {
        return bmi?.advice
    }
    
    func getColor() -> UIColor? {
        return bmi?.color
    }
}
