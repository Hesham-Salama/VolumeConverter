//
//  VolumeUnit.swift
//  VolumeConverter
//
//  Created by Hesham Salama on 2/2/20.
//  Copyright © 2020 Hesham Salama. All rights reserved.
//

import Foundation
import UIKit
// cups, fluid ounces, pints, quarts, gallon
// millitre, litres



enum VolumeUnit: String, CaseIterable {
    case cup = "c"
    case fluidOunce = "fl oz"
    case pint = "pt"
    case quart = "qt"
    case gallon = "gal"
    case milliliter = "ml"
    case liter = "l"
    
    var unit: UnitVolume {
        switch self {
        case .cup:
            return .cups
        case .fluidOunce:
            return .fluidOunces
        case .pint:
            return .pints
        case .quart:
            return .quarts
        case .gallon:
            return .gallons
        case .milliliter:
            return .milliliters
        case .liter:
            return .liters
        }
    }
}
