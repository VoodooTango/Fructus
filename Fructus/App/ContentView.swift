//
//  ContentView.swift
//  Fructus
//
//  Created by MAC on 29/06/22.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = FruitsData
    
    //MARK: BODY
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                      isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }//: BUTTON
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
            )
        }//: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}
    //MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: FruitsData)
    }
}
