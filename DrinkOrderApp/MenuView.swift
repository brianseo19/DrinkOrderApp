//
//  MenuView.swift
//  DrinkOrderApp
//
//  Created by Brian Seo on 12/16/21.
//

import SwiftUI

struct MenuView: View {
    @State private var size: String = ""
    @State private var drink: String = ""
    @Binding var isShowingMenu: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Menu {
                    Button(action: {
                        self.size = "Small"
                        self.drink = "Coffee"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Small")
                    })
                    Button(action: {
                        self.size = "Medium"
                        self.drink = "Coffee"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Medium")
                    })
                    Button(action: {
                        self.size = "Large"
                        self.drink = "Coffee"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Large")
                    })
                } label: {
                    MenuItem(image: "CoffeePlain", drink: "Coffee")
                }

                Spacer()
                
                Menu {
                    Button(action: {
                        self.size = "Small"
                        self.drink = "Water"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Small")
                    })
                    Button(action: {
                        self.size = "Medium"
                        self.drink = "Water"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Medium")
                    })
                    Button(action: {
                        self.size = "Large"
                        self.drink = "Water"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Large")
                    })
                } label: {
                    MenuItem(image: "SparklingWater", drink: "Water")
                }
                Spacer()
            }
            .padding(.bottom)
            
            HStack {
                Spacer()
                Menu {
                    Button(action: {
                        self.size = "Small"
                        self.drink = "Latte"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Small")
                    })
                    Button(action: {
                        self.size = "Medium"
                        self.drink = "Latte"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Medium")
                    })
                    Button(action: {
                        self.size = "Large"
                        self.drink = "Latte"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Large")
                    })
                } label: {
                    MenuItem(image: "Latte", drink: "Latte")
                }
                
                Spacer()
                
                Menu {
                    Button(action: {
                        self.size = "Small"
                        self.drink = "Smoothie"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Small")
                    })
                    Button(action: {
                        self.size = "Medium"
                        self.drink = "Smoothie"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Medium")
                    })
                    Button(action: {
                        self.size = "Large"
                        self.drink = "Smoothie"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Large")
                    })
                } label: {
                    MenuItem(image: "Smoothie", drink: "Smoothie")
                }
                
                Spacer()
            }
            .padding(.bottom)
            
            HStack {
                Spacer()
                Menu {
                    Button(action: {
                        self.size = "Small"
                        self.drink = "Tea"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Small")
                    })
                    Button(action: {
                        self.size = "Medium"
                        self.drink = "Tea"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Medium")
                    })
                    Button(action: {
                        self.size = "Large"
                        self.drink = "Tea"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Large")
                    })
                } label: {
                    MenuItem(image: "Tea", drink: "Tea")
                }
                
                Spacer()
                Menu {
                    Button(action: {
                        self.size = "Small"
                        self.drink = "Boba"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Small")
                    })
                    Button(action: {
                        self.size = "Medium"
                        self.drink = "Boba"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Medium")
                    })
                    Button(action: {
                        self.size = "Large"
                        self.drink = "Boba"
                        isShowingMenu.toggle()
                    }, label: {
                        Text("Large")
                    })
                } label: {
                    MenuItem(image: "Boba", drink: "Boba")
                }
                Spacer()
            }
            .padding(.horizontal, -1.0)
        }
    }
    
    func placeOrder() {
        
    }
}

//struct MenuView_Previews: PreviewProvider {
//    static var previews: some View {
//        MenuView()
//        
//    }
//}

struct MenuItem: View {
    let image: String
    let drink: String

    var body: some View {
        Button(action: {}, label: {
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                Text(drink)
                    .foregroundColor(Color.black)
                
            }
            .padding()
            .background(Color(.systemGray5))
            
        })
        .cornerRadius(10)
    }
}
