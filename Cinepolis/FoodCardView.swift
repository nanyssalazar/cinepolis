//
//  FoodCardView.swift
//  Cinepolis
//
//  Created by -a.s  on 06/10/23.
//

import SwiftUI

struct FoodCardView: View {
    var name : String
    var bgColor : Color
    var image : String
    
    var body: some View {
            VStack(){
                
                Image(image)
                    .resizable()
                    .frame(width: 180, height: 150)
                    .aspectRatio(contentMode: .fit)
                

                Text(name)
                    .font(.title2)
                    .lineLimit(1)
                    .foregroundColor(Color.white)
                    .bold()
                    .italic()
                    .truncationMode(.middle)
                    .padding(.bottom)
                    .frame( maxWidth: .infinity)
                
            }
            .frame(width: 150, height: 250)
            .background(bgColor)
            .cornerRadius(10)
            .padding(.vertical,10)
        }
    }

struct FoodCardView_Previews: PreviewProvider {
    static var previews: some View {
        FoodCardView(name: "BEBIDAS", bgColor: Color.blue, image: "bebidas")
    }
}
