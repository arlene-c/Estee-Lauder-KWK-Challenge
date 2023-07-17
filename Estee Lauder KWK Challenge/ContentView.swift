//
//  ContentView.swift
//  Estee Lauder KWK Challenge
//
//  Created by Arlene Chang on 6/26/23.
//

import SwiftUI
import AVKit

struct ImageSlider: View {
    
    // 1
    private let images = ["estee 35", "estee 14", "estee 10", "estee 50"]
    var body: some View {
        // 2
        TabView {
            ForEach(images, id: \.self) { item in
                 //3
                 Image(item)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}



struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            VStack () {
                        
                        Image("estee logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height:50)
                        Image("line divider")
                        
                        
                        Text("Introducing")
                            .font(.custom("OptimaDisplay-Roman", size:20))
                        Text("The Nutritious Line")
                            .font(.custom("OptimaDisplay-Roman", size:40))
                     
                        
                        List {
                            ImageSlider()
                                .frame(height: 450)
                                
                                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            
                        }
                        Spacer()
                        Spacer()
                       
                        Spacer()
                       
                        NavigationLink(destination: ShopCollectionPage()) {
                            Text("Why NutritioUS?")
                                .font(.custom("OptimaDisplay-Roman", size:30))
                                .foregroundColor(Color("orange"))
                            
                        }
                        
                        
                    }
                }
            }
        
        
            
            
        
    }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
