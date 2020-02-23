//
//  CalculationResult.swift
//  Calculator
//
//  Created by Tomasz Kryg on 23/02/2020.
//  Copyright © 2020 Tomasz Kryg. All rights reserved.
//

import Foundation

public enum CalculationResult {
    case value(ValueDisplayable)
    case NaN
    
    var value: ValueDisplayable? {
        switch self {
        case .value(let result):
            return result
        default:
            return nil
        }
    }
}
