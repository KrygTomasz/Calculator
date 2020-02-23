//
//  DoubleCalculator.swift
//  Calculator
//
//  Created by Tomasz Kryg on 23/02/2020.
//  Copyright © 2020 Tomasz Kryg. All rights reserved.
//

import Foundation

final public class DoubleCalculator: Calculator {
    public typealias Value = Double
    public func add(_ a: Value, to b: Value) -> CalculationResult {
        return .value(a+b)
    }
    
    public func subtract(from a: Value, _ b: Value) -> CalculationResult {
        return .value(a-b)
    }
    
    public func multiply(_ a: Value, by b: Value) -> CalculationResult {
        return .value(a*b)
    }
    
    public func divide(_ a: Value, by b: Value) -> CalculationResult {
        return b == 0.0 ? .NaN : .value(a/b)
    }
}
