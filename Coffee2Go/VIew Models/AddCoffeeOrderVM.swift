//
//  AddCoffeeOrderVM.swift
//  Coffee2Go
//
//  Created by Sean Murphy on 5/30/22.
//

import Foundation

struct AddCoffeeOrderVM {
    
    var name: String?
    var email: String?
    
    var types: [String] {
        return CoffeeType.allCases.map { $0.rawValue.capitalized }
    }
    
    var sizes: [String] {
        return CoffeeSize.allCases.map { $0.rawValue.capitalized }
    }
}
