//
//  AdditionTests.swift
//  CalculatorTests
//
//  Created by Tomasz Kryg on 23/02/2020.
//  Copyright © 2020 Tomasz Kryg. All rights reserved.
//

import XCTest
@testable import Calculator

class AdditionTests: XCTestCase {

    let calculator = DoubleCalculator()

    func testAddPositiveNumbers() {
        let a: Double = 2.1
        let b: Double = 15.4
        let result = calculator.add(a, to: b)
        XCTAssert(result == CalculationResult<Double>.value(17.5))
    }
    
    func testAddPositiveNumberToNegativeNumber() {
        let a: Double = 5.0
        let b: Double = -8.0
        let result = calculator.add(a, to: b)
        XCTAssert(result == CalculationResult<Double>.value(-3.0))
    }
    
    func testAddNegativeNumberToPositiveNumber() {
        let a: Double = -8.0
        let b: Double = 5.0
        let result = calculator.add(a, to: b)
        XCTAssert(result == CalculationResult<Double>.value(-3.0))
    }
    
    func testAddNegativeNumbers() {
        let a: Double = -12.0
        let b: Double = -29.0
        let result = calculator.add(a, to: b)
        XCTAssert(result == CalculationResult<Double>.value(-41.0))
    }
    
    func testAddNeutralElement() {
        let a: Double = 12.3
        let neutral: Double = 0.0
        let result = calculator.add(a, to: neutral)
        XCTAssert(result == CalculationResult<Double>.value(a))
    }

}
