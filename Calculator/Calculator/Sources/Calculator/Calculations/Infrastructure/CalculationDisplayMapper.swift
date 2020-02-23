//
//  CalculationDisplayMapper.swift
//  Calculator
//
//  Created by Tomasz Kryg on 23/02/2020.
//  Copyright © 2020 Tomasz Kryg. All rights reserved.
//

import Foundation

struct CalculationDisplayMapper {
    let displaySize: Int
    init(displaySize: Int) {
        self.displaySize = displaySize
    }
    
    func map(result: CalculationResult) -> String {
        switch result {
        case .value(let result):
            return result.display(places: displaySize)
        case .NaN:
            return "NaN"
        }
    }
}
