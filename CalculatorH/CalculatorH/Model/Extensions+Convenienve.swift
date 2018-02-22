//
//  Extensions+Convenienve.swift
//  CalculatorH
//
//  Created by Erik HARTLEY on 2/21/18.
//  Copyright © 2018 Erik HARTLEY. All rights reserved.
//

import Foundation
import CoreData

extension CalculatorEntry {
    
    @discardableResult convenience init(number: String, timestamp: Date = Date(), context: NSManagedObjectContext = CoreDataStack.context) {
        
        self.init(context: context)
        self.number = number
        self.timestamp = timestamp
    }
}
extension Date {
    func stringValue() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: self)
    }
}
