//
//  Displayable.swift
//  Calculator
//
//  Created by Tomasz Kryg on 23/02/2020.
//  Copyright © 2020 Tomasz Kryg. All rights reserved.
//

import Foundation

public protocol ValueDisplayable {
    func display(places: Int) -> String
}
