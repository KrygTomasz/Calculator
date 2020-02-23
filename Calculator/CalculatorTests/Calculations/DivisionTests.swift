//
//  DivisionTests.swift
//  CalculatorTests
//
//  Created by Tomasz Kryg on 23/02/2020.
//  Copyright © 2020 Tomasz Kryg. All rights reserved.
//

import XCTest
@testable import Calculator

class DivisionTests: XCTestCase {
    
    let calculator = DoubleCalculator()
    
    func testDividePositiveNumbers() {
        let a: Double = 5.0
        let b: Double = 8.0
        let result = calculator.divide(a, by: b)
        XCTAssert(result == CalculationResult<Double>.value(0.625))
    }
    
    func testDivideNegativeNumberByPositiveNumber() {
        let a: Double = -2.4
        let b: Double = 1.2
        let result = calculator.divide(a, by: b)
        XCTAssert(result == CalculationResult<Double>.value(-2.0))
    }
    
    func testDividePositiveNumberByNegativeNumber() {
        let a: Double = 6.25
        let b: Double = -2.5
        let result = calculator.divide(a, by: b)
        XCTAssert(result == CalculationResult<Double>.value(-2.5))
    }
    
    func testDivideNegativeNumbers() {
        let a: Double = -9.3
        let b: Double = -3
        let result = calculator.divide(a, by: b)
        XCTAssert(result == CalculationResult<Double>.value(3.1))
    }
    
    func testDivideByNeutralElement() {
        let a: Double = 12.3
        let neutral: Double = 1.0
        let result = calculator.divide(a, by: neutral)
        XCTAssert(result == CalculationResult<Double>.value(a))
    }
    
    func testDivideByZero() {
        let a: Double = 12.3
        let b: Double = 0.0
        let result = calculator.divide(a, by: b)
        XCTAssert(result == CalculationResult<Double>.NaN)
    }

}
