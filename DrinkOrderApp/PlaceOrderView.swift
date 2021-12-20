//
//  PlaceOrderView.swift
//  DrinkOrderApp
//
//  Created by Brian Seo on 12/16/21.
//

import SwiftUI

struct PlaceOrderView: View {
    var orderStore: OrderStore
    @State private var newOrder = [Drink]()
    @State private var isShowingMenu = false
    
    
    var body: some View {
       
        VStack {
            Spacer()
            VStack {
                Text("Order For")
                HStack {
                    Text(Date(), style: .date)
                    Text(Date(), style: .time)
                }
            }
            .padding(.bottom, 100)
            VStack {
                ForEach(newOrder, id: \.self) { drink in
                    Text("\(drink.type) - \(drink.size)")
                }
            }
            Spacer()
            Button(action: { isShowingMenu.toggle() }, label: {
                Text("Add Item")
                    .padding()
            })
            .sheet(isPresented: $isShowingMenu, content: { MenuView(isShowingMenu: $isShowingMenu, newOrder: $newOrder) })
            
            Button(action: {
                if (!newOrder.isEmpty) {
                    orderStore.addOrder(drinks: newOrder)
                    newOrder = [Drink]()
                }
                
            }, label: {
                Text("Submit Order")
                    .fontWeight(.semibold)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title2)
                    .cornerRadius(10)
            })
            Spacer()
        }
        
    }
    

}

struct PlaceOrderView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceOrderView(orderStore: OrderStore())
    }
}
