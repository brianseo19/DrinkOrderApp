//
//  HomeScreenView.swift
//  DrinkOrderApp
//
//  Created by Brian Seo on 12/16/21.
//

import SwiftUI

struct HomeScreenView: View {
    @State private var placeOrder = false
    @State private var orderHistory = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to Swift Café").font(.title).fontWeight(.bold)
                Image("Coffee")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                
                NavigationLink(
                    destination: PlaceOrderView(),
                    isActive: $placeOrder,
                    label:{
                        Button(action: {placeOrder.toggle()}, label: {
                            Text("Place Order")
                                .fontWeight(.semibold)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(Color.white)
                                .font(.title2)
                                .cornerRadius(10)
                        })
                        .padding(.top)
                    })
                
                
                NavigationLink(
                    destination: OrderHistoryView(),
                    isActive: $orderHistory,
                    label: {
                        Button(action: {orderHistory.toggle()}, label: {
                            Text("View Order History")
                                .padding()
                                .font(.title3)
                        })
                    })
                Spacer()
            }
        }
        
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
