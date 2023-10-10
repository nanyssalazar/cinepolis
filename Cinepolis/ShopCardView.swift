//
//  ShopCardView.swift
//  Cinepolis
//
//  Created by -a.s  on 09/10/23.
//

import SwiftUI

struct ShopCardView: View {
    var image: String
    var name: String
    var price: String
    
    var body: some View {
        VStack(){
            
            Image(image)
                .resizable()
                .frame(width: 150, height: 100)
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                
                Text(name)
                    .font(.body)
                    .lineLimit(1)
                    .foregroundColor(Color("darkBlue"))
                    .bold()
                    .truncationMode(.tail)
                
                Text(price)
                    .font(.subheadline)
                    .foregroundColor(Color("darkBlue"))
                    
            }
    
            .padding(.horizontal, 10)
                
        }
        
        .frame(width: 150, height: 200)
        .background(Color("myGreyColor"))
        .cornerRadius(10)
        .padding(.vertical,10)
    }
    
}

struct ShopCardView_Previews: PreviewProvider {
    static var previews: some View {
        ShopCardView(image: "dulces", name:"Vaso Granel Grande", price: "$85.00")
    }
}
