//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
//    var billTotal : Double?
//    var tipAmount : Double?
//    var splitNumber : Double?
//    var totalAmount : String?
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.f",sender.value)
        billTextField.endEditing(true)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!
        let tipAmount = calculateTipPct()
        let splitNumber = Double(splitNumberLabel.text!)
        
        if(bill != "")
        {
            let billTotal = Double(bill)!
            calculatorBrain.calculateTotalAmount(billTotal: billTotal, tipAmount: tipAmount, splitNumber: splitNumber!)
        }
        else{
            calculatorBrain.calculateTotalAmount(billTotal: 0.0, tipAmount: tipAmount, splitNumber: splitNumber!)
        }
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tipAmount = calculateTipPct()
        let splitNumber = Double(splitNumberLabel.text!)
        
        if segue.identifier == "goToResult"
        {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.total = calculatorBrain.getTotal()
            destinationVC.settings = calculatorBrain.getSettings(tipAmount:tipAmount,splitNumber: splitNumber!)
        }
            
    }
    
    func calculateTipPct()->Double{
        if zeroPctButton.isSelected
        {
            return 0
        }
        else if tenPctButton.isSelected
        {
            return 0.1
        }
        else if twentyPctButton.isSelected
        {
            return 0.2
        }
        
        return 0
    }
    
}

