//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Zlata Guseva on 07/10/2022.
//

import Foundation

struct CalculatorLogic {
    private var number: Double?
    private var intermediateCalculation: (num1: Double, calcMethod: String)?
    
    mutating func setNumber( _ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String ) -> Double? {
        if let n = number {
            switch symbol {
            case "+/-":
                return n *  -1
            case "AC":
                return 0
            case "%":
                return n * 0.01
            case "=":
                return performToNumCalculation(num2: n)
            default:
                intermediateCalculation = (num1: n, calcMethod: symbol)
            }
        }
        return nil
    }
    
    private func performToNumCalculation(num2: Double) -> Double? {
        if let num1 = intermediateCalculation?.num1, let operation = intermediateCalculation?.calcMethod {
            
            switch operation {
            case "+":
                return num1 + num2
            case "-":
                return num1 - num2
            case "×":
                return num1 * num2
            case "÷":
                return num1 / num2
            default:
                fatalError("The operation passed in does not match any of the cases.")
            }
        }
        return nil
    }
}
