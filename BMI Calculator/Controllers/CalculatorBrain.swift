//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by pranit on 15/08/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue : String = "0.0"
    
    mutating func calculateBMI(weight: Float, height : Float) {
        let bmi = weight / (pow(height, 2))
        bmiValue = String(format: "%.1f", bmi)
    }
    
    func getBMIValue() -> String {
        return bmiValue
    }
}
