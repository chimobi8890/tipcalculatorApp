//
//  ViewController.swift
//  tip
//
//  Created by Chimobi Ucha on 9/8/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // Do any additional setup after loading the view.
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
       
        //makes the bill amount textfield the first responder when app loads
        billAmountTextField.becomeFirstResponder()
       
        //changes keyboard type to numeric
        billAmountTextField.keyboardType = .numberPad

    }
    
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
    //Get initial bill amount and calculate tips
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2] 
        
    //Calculate tip and total
        let tip = bill * tipPercentages [tipControl.selectedSegmentIndex]
        let total = bill + tip
    
        
    // Update the tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}


