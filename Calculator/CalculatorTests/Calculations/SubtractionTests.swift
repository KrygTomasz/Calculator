//
//  SubtractionTests.swift
//  CalculatorTests
//
//  Created by Tomasz Kryg on 23/02/2020.
//  Copyright © 2020 Tomasz Kryg. All rights reserved.
//

import XCTest
@testable import Calculator

class SubtractionTests: XCTestCase {

    let calculator = DoubleCalculator()
    
    func testSubtractPositiveNumbers() {
        let a: Double = 12.1
        let b: Double = 13.1
        let result = calculator.subtract(from: a, b)
        XCTAssertEqual(result.value, -1.0)
    }
    
    func testSubtractPositiveNumberFromNegativeNumber() {
        let a: Double = -22.0
        let b: Double = 5.9
        let result = calculator.subtract(from: a, b)
        XCTAssertEqual(result.value, -27.9)
    }
    
    func testSubtractNegativeNumberFromPositiveNumber() {
        let a: Double = 33.3
        let b: Double = -12.1
        let result = calculator.subtract(from: a, b)
        XCTAssertEqual(result.value, 45.4)
    }
    
    func testSubtractNegativeNumbers() {
        let a: Double = -12.1
        let b: Double = -13.1
        let result = calculator.subtract(from: a, b)
        XCTAssertEqual(result.value, 1.0)
    }
    
    func testSubtractNeutralElement() {
        let a: Double = 12.3
        let neutral: Double = 0.0
        let result = calculator.subtract(from: a, neutral)
        XCTAssertEqual(result.value, a)
    }
}
