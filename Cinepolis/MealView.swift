//
//  MealView.swift
//  Cinepolis
//
//  Created by -a.s  on 09/10/23.
//

import SwiftUI

struct MealView: View {
    var items: [GridItem] {
      Array(repeating: .init(.adaptive(minimum:100)), count: 2)
    }
    

    var body: some View {
        ScrollView(.vertical) {
            Text("Alimentos")
                .foregroundColor(Color("darkBlue"))
                .bold()
                .font(.title2)
                .padding(.leading,30)
                // asi hacemos que se vaya a la izquierda el texto
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)

            LazyVGrid(columns: items, alignment: .center, spacing: 0) {
                ShopCardView(image: "baggi",name:"Baggi sencillo", price: "$120.00")
                ShopCardView(image: "baggi",name:"Baggi sencillo", price: "$120.00")
                ShopCardView(image: "baggi",name:"Baggi sencillo", price: "$120.00")
                ShopCardView(image: "baggi",name:"Baggi sencillo", price: "$120.00")
                ShopCardView(image: "baggi",name:"Baggi sencillo", price: "$120.00")
                ShopCardView(image: "baggi",name:"Baggi sencillo", price: "$120.00")
                ShopCardView(image: "baggi",name:"Baggi sencillo", price: "$120.00")
                ShopCardView(image: "baggi",name:"Baggi sencillo", price: "$120.00")
                
                
                
            }
            .padding(.horizontal, 20)
        }
    }
}

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView()
    }
}
