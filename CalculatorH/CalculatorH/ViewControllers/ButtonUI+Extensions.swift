//
//  ButtonUI+Extensions.swift
//  CalculatorH
//
//  Created by Erik HARTLEY on 2/21/18.
//  Copyright © 2018 Erik HARTLEY. All rights reserved.
//

import UIKit

extension BasicCalcViewController {
    // MARK: - Change to Rounded Corners
    func changeRoundedCorners() {
        let roundedCorner: CGFloat = 12
        dotButton.layer.cornerRadius = roundedCorner
        zeroButton.layer.cornerRadius = roundedCorner
        oneButton.layer.cornerRadius = roundedCorner
        twoButton.layer.cornerRadius = roundedCorner
        threeButton.layer.cornerRadius = roundedCorner
        
        fourButton.layer.cornerRadius = roundedCorner
        fiveButton.layer.cornerRadius = roundedCorner
        sixButton.layer.cornerRadius = roundedCorner
        sevenButton.layer.cornerRadius = roundedCorner
        
        eightButton.layer.cornerRadius = roundedCorner
        nineButton.layer.cornerRadius = roundedCorner
        kglbsButton.layer.cornerRadius = roundedCorner
        equalsButton.layer.cornerRadius = roundedCorner
        
        plusButton.layer.cornerRadius = roundedCorner
        minusButton.layer.cornerRadius = roundedCorner
        multiplyButton.layer.cornerRadius = roundedCorner
        divisionButton.layer.cornerRadius = roundedCorner
        percentButton.layer.cornerRadius = roundedCorner
        positiveNegativeButton.layer.cornerRadius = roundedCorner
        clearButton.layer.cornerRadius = roundedCorner
    }
    func buttonOutlineChanged() {
        let boarderWidth: CGFloat = 4
        dotButton.layer.borderWidth = boarderWidth
        zeroButton.layer.borderWidth = boarderWidth
        oneButton.layer.borderWidth = boarderWidth
        twoButton.layer.borderWidth = boarderWidth
        threeButton.layer.borderWidth = boarderWidth
        
        fourButton.layer.borderWidth = boarderWidth
        fiveButton.layer.borderWidth = boarderWidth
        sixButton.layer.borderWidth = boarderWidth
        sevenButton.layer.borderWidth = boarderWidth
        
        eightButton.layer.borderWidth = boarderWidth
        nineButton.layer.borderWidth = boarderWidth
        kglbsButton.layer.borderWidth = boarderWidth
        equalsButton.layer.borderWidth = boarderWidth
        
        plusButton.layer.borderWidth = boarderWidth
        minusButton.layer.borderWidth = boarderWidth
        multiplyButton.layer.borderWidth = boarderWidth
        divisionButton.layer.borderWidth = boarderWidth
        
        percentButton.layer.borderWidth = boarderWidth
        positiveNegativeButton.layer.borderWidth = boarderWidth
        clearButton.layer.borderWidth = boarderWidth
        display.layer.borderWidth = CGFloat(6)
         
        }
    // MARK: - Animations
}

extension UIButton {
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.2
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.repeatCount = 0
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
    }
}
class MarginLabel: UILabel {
    
    var topInset:       CGFloat = 0
    var rightInset:     CGFloat = 4
    var bottomInset:    CGFloat = 0
    var leftInset:      CGFloat = 0
    
    override func drawText(in rect: CGRect) {
        let insets: UIEdgeInsets = UIEdgeInsets(top: self.topInset, left: self.leftInset, bottom: self.bottomInset, right: self.rightInset)
        self.setNeedsLayout()
        return super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }
}









