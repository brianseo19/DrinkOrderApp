//
//  Order.swift
//  DrinkOrderApp
//
//  Created by Brian Seo on 12/16/21.
//

import SwiftUI
 
class OrderStore: ObservableObject {
    @Published var orders = [Order]()
    
    func addOrder(drinks: [Drink]) {
        orders.append(Order(Drinks: drinks, date: Date()))
    }
}

struct Order: Identifiable {
    var id: UUID
    var Drinks: [Drink]
    var date: Date
    
    init(id: UUID = UUID(), Drinks: [Drink], date: Date) {
        self.id = id
        self.Drinks = Drinks
        self.date = date
    }
    
}

struct Drink: Hashable {
    var type: String
    var size: String
    
    init(type: String, size: String) {
        self.type = type
        self.size = size
    }
}

