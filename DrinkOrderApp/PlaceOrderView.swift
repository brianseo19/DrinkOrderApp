//
//  PlaceOrderView.swift
//  DrinkOrderApp
//
//  Created by Brian Seo on 12/16/21.
//

import SwiftUI

struct PlaceOrderView: View {
    @State private var isShowingMenu = false
    
    var body: some View {
        
        VStack {
            Text("Order For")
            Text(Date(), style: .date)
            
            Button(action: { isShowingMenu.toggle() }, label: {
                Text("Add Item")
                    .padding()
            })
            .sheet(isPresented: $isShowingMenu, content: { MenuView(isShowingMenu: $isShowingMenu) })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Submit Order")
                    .fontWeight(.semibold)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title2)
                    .cornerRadius(10)
            })
        }
        
    }
}

struct PlaceOrderView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceOrderView()
    }
}
