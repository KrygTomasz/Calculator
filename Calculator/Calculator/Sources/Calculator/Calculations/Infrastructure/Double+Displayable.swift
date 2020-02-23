//
//  Double+Displayable.swift
//  Calculator
//
//  Created by Tomasz Kryg on 23/02/2020.
//  Copyright © 2020 Tomasz Kryg. All rights reserved.
//

import Foundation

extension Double: ValueDisplayable {
    public func display(places: Int) -> String {
        let format = "%.\(places)g"
        return String(format: format, self)
    }
}
