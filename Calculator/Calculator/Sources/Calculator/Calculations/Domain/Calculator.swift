//
//  Operation.swift
//  Calculator
//
//  Created by Tomasz Kryg on 23/02/2020.
//  Copyright © 2020 Tomasz Kryg. All rights reserved.
//

import Foundation

public protocol Calculator {
    associatedtype Value
    func add(_ a: Value, to b: Value) -> CalculationResult
    func subtract(from a: Value, _ b: Value) -> CalculationResult
    func multiply(_ a: Value, by b: Value) -> CalculationResult
    func divide(_ a: Value, by b: Value) -> CalculationResult
}
