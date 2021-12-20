//
//  OrderHistoryView.swift
//  DrinkOrderApp
//
//  Created by Brian Seo on 12/16/21.
//

import SwiftUI

struct OrderHistoryView: View {
    var body: some View {
        VStack {
            DrinkCardView()
            DrinkCardView()
            DrinkCardView()
        }
    }
}

struct OrderHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistoryView()
    }
}

struct DrinkCardView: View {
    var body: some View {
        VStack {
            Text("Order for 11/15/2021")
                .font(.system(size: 20))
                .fontWeight(.semibold)
            VStack {
                Text("Drink One")
                Text("Drink Two")
                Text("Drink Three")
            }
            
        }
        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: 125, alignment: .center)
        .background(Color(.systemGray5))
        .cornerRadius(10)
        .padding(.horizontal)
        .padding(.vertical, 1.0)
    }
}
