//
//  SnacksView.swift
//  Cinepolis
//
//  Created by -a.s  on 09/10/23.
//

import SwiftUI

struct SnacksView: View {
    var items: [GridItem] {
      Array(repeating: .init(.adaptive(minimum:100)), count: 2)
    }
    

    var body: some View {
        ScrollView(.vertical) {
            Text("Palomitas")
                .foregroundColor(Color("darkBlue"))
                .bold()
                .font(.title2)
                .padding(.leading,30)
                // asi hacemos que se vaya a la izquierda el texto
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)

            LazyVGrid(columns: items, alignment: .center, spacing: 0) {
                ShopCardView(image: "combo",name:"Combo Cuates", price: "$250.00")
                ShopCardView(image: "palomitas",name:"Palomitas", price: "$80.00")
               ShopCardView(image: "combo",name:"Combo Cuates", price: "$250.00")
                ShopCardView(image: "palomitas",name:"Palomitas", price: "$80.00")
               ShopCardView(image: "combo",name:"Combo Cuates", price: "$250.00")
                ShopCardView(image: "palomitas",name:"Palomitas", price: "$80.00")
               ShopCardView(image: "combo",name:"Combo Cuates", price: "$250.00")
                ShopCardView(image: "palomitas",name:"Palomitas", price: "$80.00")
               
                
            }
            .padding(.horizontal, 20)
        }
    }
}
    

struct SnacksView_Previews: PreviewProvider {
    static var previews: some View {
        SnacksView()
    }
}
