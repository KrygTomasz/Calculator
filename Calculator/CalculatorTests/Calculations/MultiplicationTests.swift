//
//  MultiplicationTests.swift
//  CalculatorTests
//
//  Created by Tomasz Kryg on 23/02/2020.
//  Copyright © 2020 Tomasz Kryg. All rights reserved.
//

import XCTest
@testable import Calculator

class MultiplicationTests: XCTestCase {

    let calculator = DoubleCalculator()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testMultiplyPositiveNumbers() {
        let a: Double = 5.0
        let b: Double = 3.4
        let result = calculator.multiply(a, by: b)
        XCTAssert(result == CalculationResult<Double>.value(17.0))
    }
    
    func testMultiplyNegativeNumberByPositiveNumber() {
        let a: Double = -1.0
        let b: Double = 2.2
        let result = calculator.multiply(a, by: b)
        XCTAssert(result == CalculationResult<Double>.value(-2.2))
    }
    
    func testMultiplyPositiveNumberByNegativeNumber() {
        let a: Double = 2.2
        let b: Double = -1.2
        let result = calculator.multiply(a, by: b)
        XCTAssert(result == CalculationResult<Double>.value(-2.64))
    }
    
    func testMultiplyNegativeNumbers() {
        let a: Double = -6.1
        let b: Double = -4.5
        let result = calculator.multiply(a, by: b)
        XCTAssert(result == CalculationResult<Double>.value(27.45))
    }
    
    func testMultiplyByNeutralElement() {
        let a: Double = 12.3
        let neutral: Double = 1.0
        let result = calculator.multiply(a, by: neutral)
        XCTAssert(result == CalculationResult<Double>.value(a))
    }
    
    func testMultiplyByZero() {
        let a: Double = 1.0
        let b: Double = 0.0
        let result = calculator.multiply(a, by: b)
        XCTAssert(result == CalculationResult<Double>.value(0.0))
    }

}
