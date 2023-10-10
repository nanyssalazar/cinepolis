//
//  ContentView.swift
//  Cinepolis
//
//  Created by -a.s  on 06/10/23.
//

import SwiftUI

struct ContentView: View {
    var items: [GridItem] {
      Array(repeating: .init(.adaptive(minimum:120)), count: 2)
    }
    
    var body: some View {
        NavigationView{
            
            LazyVGrid(columns: items, alignment: .center, spacing: 0) {
                NavigationLink(destination: DrinksView(), label: {
                    FoodCardView(name: "BEBIDAS", bgColor: Color.blue, image: "bebidas")
                })
                NavigationLink(destination: MealView(), label: {
                    FoodCardView(name: "ALIMENTOS", bgColor: Color.red, image: "alimentos")
                })
              NavigationLink(destination: SnacksView(), label: {
                  FoodCardView(name: "SNACKS", bgColor: Color.green, image: "snacks")
                })
              NavigationLink(destination: CandyView(), label: {
                  FoodCardView(name: "POSTRES", bgColor: Color.purple, image: "postres")
                })
              
                
               
                
            }
            .padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
