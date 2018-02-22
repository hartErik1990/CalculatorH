//
//  BasicCalcViewController.swift
//  CalculatorH
//
//  Created by Erik HARTLEY on 2/19/18.
//  Copyright © 2018 Erik HARTLEY. All rights reserved.
//

import UIKit

class BasicCalcViewController: UIViewController {
    
    // MARK: - Number Properties
    @IBOutlet weak var dotButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    
    // MARK: - Action Properties
    @IBOutlet weak var kglbsButton: UIButton!
    @IBOutlet weak var equalsButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
   
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divisionButton: UIButton!
    
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var positiveNegativeButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        changeRoundedCorners()
        buttonOutlineChanged()
        clearButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
    }
    
    @IBOutlet weak var display: MarginLabel!

    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        display.text = "0"
        sender.pulsate()
    }
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTyping = true
        }
        sender.pulsate()
    }
    
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    private var brain = CalculatorParts()
    
    @IBAction func performOperation(_ sender: UIButton) {
        if userIsInTheMiddleOfTyping {
            brain.setOperand(displayValue)
            userIsInTheMiddleOfTyping = false
        }
        if let mathematicalSymbol = sender.currentTitle {
            brain.performOperation(mathematicalSymbol)
        }
        if let result = brain.result {
            displayValue = result
            CalculatorEntryController.shared.add(withNumber: "\(result)")
        }
        sender.pulsate()
    }
}

