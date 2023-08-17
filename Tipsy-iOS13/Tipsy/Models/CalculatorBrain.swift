//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Rene Sanger on 5/26/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

//import Foundation

struct CalculatorBrain{
    var totalAmount : String?
    
    func getTotal()->String
    {
        return totalAmount!
    }
    
    func getSettings(tipAmount: Double, splitNumber:Double)->String{
        return "Split between \(splitNumber) people with \(tipAmount*100)% tip"
    }
    
    mutating func calculateTotalAmount(billTotal: Double, tipAmount : Double, splitNumber : Double){
        let result = billTotal * (1 + tipAmount)/splitNumber
        totalAmount = String(format: "%.2f", result)
    }
    
}
