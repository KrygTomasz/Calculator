//
//  CalculationResult.swift
//  Calculator
//
//  Created by Tomasz Kryg on 23/02/2020.
//  Copyright © 2020 Tomasz Kryg. All rights reserved.
//

import Foundation

public enum CalculationResult<T: Equatable>: Equatable {
    case value(T)
    case NaN
    
    public static func == (lhs: CalculationResult<T>, rhs: CalculationResult<T>) -> Bool {
        switch (lhs, rhs) {
        case (.NaN, .NaN):
            return true
        case (.value(let firstValue), .value(let secondValue)):
            return firstValue == secondValue
        default:
            return false
        }
    }
}
