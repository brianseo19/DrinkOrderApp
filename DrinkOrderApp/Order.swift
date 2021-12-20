//
//  Order.swift
//  DrinkOrderApp
//
//  Created by Brian Seo on 12/16/21.
//

import SwiftUI
 
struct Order {
    var Drinks: [Drink]
    var date: Date
    
    init(Drinks: [Drink], date: Date) {
        self.Drinks = Drinks
        self.date = date
    }
}

struct Drink {
    var type: String
    var size: String
    
    init(type: String, size: String) {
        self.type = type
        self.size = size
    }
}

extension Order {
    static var orders: [Order] {
        []
    }
}
