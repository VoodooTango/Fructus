//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by MAC on 02/07/22.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    //MARK: BODY
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional values per 100g"){
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Text(nutrients[item])
                            Image(systemName: "info.circle")
                        }// GROUP1
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }//HSTACK
                }// LOOP
            }
        }// BOX
    }
}
    //MARK: PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: FruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    
}
}
