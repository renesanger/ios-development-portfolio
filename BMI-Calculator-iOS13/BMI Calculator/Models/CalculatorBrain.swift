//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Rene Sanger on 5/25/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{
    
    var bmi : BMI?

    func getBMIValue() -> String
    {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    func getAdvice() -> String
    {
        return bmi?.advice ?? ""
    }
    func getColor() -> UIColor
    {
        return bmi?.color ?? UIColor.clear
    }
    
    mutating func calculateBMI(height: Float, weight : Float){
        
        let bmiValue = weight/pow(height, 2)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        }
        else if bmiValue < 24.9
        {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
            print("Normal")
        }
        else
        {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: .red)
            print("Overweight")
        }
    }
}
