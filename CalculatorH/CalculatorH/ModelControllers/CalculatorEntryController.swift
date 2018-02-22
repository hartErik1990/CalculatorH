//
//  StoredValuesController.swift
//  CalculatorH
//
//  Created by Erik HARTLEY on 2/21/18.
//  Copyright © 2018 Erik HARTLEY. All rights reserved.
//

import Foundation
import CoreData

class CalculatorEntryController {
    static let shared = CalculatorEntryController()
    var entries = [CalculatorEntry]()
    
    //CRUD
    func add(withNumber number: String) {
        CalculatorEntry(number: number)
        saveToPersistentStore()
    }
    
    func delete(calculatorEntry: CalculatorEntry) {
        CoreDataStack.context.delete(calculatorEntry)
        saveToPersistentStore()
    }
    func update(calculatorEntry: CalculatorEntry, withNumber number: String) {
        calculatorEntry.number = number
        saveToPersistentStore()
    }
    func saveToPersistentStore() {
        do { try CoreDataStack.context.save()
        } catch {
            print("error saving failed with error of \(error.localizedDescription)")
        }
    }
}

