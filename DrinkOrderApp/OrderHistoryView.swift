//
//  OrderHistoryView.swift
//  DrinkOrderApp
//
//  Created by Brian Seo on 12/16/21.
//

import SwiftUI

struct OrderHistoryView: View {
    let orders: [Order]
    var body: some View {
        
        List(orders) { order in
            DrinkCardView(drinks: order.Drinks, date: order.date)
        }

    }
}

struct OrderHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistoryView(orders: [Order(Drinks: [Drink(type: "Coffee", size: "Small")], date: Date())])
    }
}

struct DrinkCardView: View {
    let drinks: [Drink]
    let date: Date
    
    var body: some View {
        VStack {
            HStack {
                Text(date, style: .date)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                Text(date, style: .time)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
            }
            VStack {
                ForEach(drinks, id: \.self) { drink in
                    Text("\(drink.type) - \(drink.size)")
                }
            }
            
        }
        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: 200, alignment: .center)
        .background(Color(.systemGray5))
        .cornerRadius(10)
        .padding(.horizontal)
        .padding(.vertical, 1.0)
    }
}
