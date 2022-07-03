//
//  OnboardingView.swift
//  Fructus
//
//  Created by MAC on 29/06/22.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: Properties
    var fruits: [Fruit] = FruitsData
    
    
    //MARK: BODY
    
    var body: some View {
        TabView {
            ForEach(fruits[0..<5]) { item in
                FruitCardView(fruit: item)
            
            }//: LOOP
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
       
        //MARK: PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: FruitsData)
    }
}
