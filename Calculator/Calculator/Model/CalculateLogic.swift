//
//  CalculateLogic.swift
//  Calculator
//
//  Created by Zlata Guseva on 07/10/2022.
//

import Foundation

class CalculateLogic {
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String ) -> Double? {
        
        if symbol == "+/-" {
            return number *  -1
        } else if symbol == "AC" {
            return 0
        } else if symbol == "%" {
            return number * 0.01
        }
        return nil
    }
}
