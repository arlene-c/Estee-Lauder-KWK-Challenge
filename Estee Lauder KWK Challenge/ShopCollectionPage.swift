//
//  ShopCollectionPage.swift
//  Estee Lauder KWK Challenge
//
//  Created by Arlene Chang on 6/28/23.
//

import SwiftUI
import AVKit


struct ShopCollectionPage: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>

    
    
    
    @State private var showPopUp = false
    @State private var popUpTwo = false
    @State private var popUpThree = false
    @State private var popUpFour = false
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "square nutritious video", withExtension: "mp4")!)
    var body: some View {
        ScrollView {
           
            VStack {
                Spacer()
                       .navigationBarBackButtonHidden(true)
                   .toolbar(content: {
                       ToolbarItem (placement: .navigationBarLeading)  {
                                
                           Button(action: {
                               presentationMode.wrappedValue.dismiss()
                           }, label: {
                             //  Image(systemName: "arrow.left")
                               Image("estee home logo")
                                   .resizable()
                                   .aspectRatio(contentMode: .fit)
                                   .frame(width:37)
                                   .frame(height:37)
                                   
                               Text("HOME")
                                   .foregroundColor(Color("dark blue"))
                           })
                     
                           
                           
                       }
                       })
                
                
                
                
                
                
                
                ZStack {
                    VStack(spacing: 20) {
                        Text("Why Choose NutritioUS?")
                            .font(.custom("OptimaDisplay-Roman", size:30))
                        Image("line divider")
                      
                        
                        Text("Click Video!")
                            .font(.custom("OptimaDisplay-Roman", size:20))
                      
                         
                        VideoPlayer(player: player)
                            .frame(width: 320, height: 320, alignment: .center)
                            .padding(.horizontal)
                        Spacer()
                    
                        Text("Click Each Product To Learn More")
                            .font(.custom("OptimaDisplay-Roman", size:20))
                        Spacer()
                        
                        Button(action: {
                            self.showPopUp = true
                        }, label: {
                            
                            ZStack{
                                Color("light pink")
                                    .cornerRadius(20)
                                    .frame(width:305)
                                    .frame(height:300)
                                
                                VStack{
                                    Text("MELTING SOFT CREME/")
                                        .foregroundColor(Color("mid pink"))
                                        .font(.custom("OptimaDisplay-Roman", size:20))
                                    Text("MASK MOISTURIZER")
                                        .foregroundColor(Color("mid pink"))
                                        .font(.custom("OptimaDisplay-Roman", size:20))
                                    Image("EL mask container")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:200)
                                        .cornerRadius(30)
                                        .shadow(radius:7)
                                }
                                
                            }
                            
                        })
                    }
                    if $showPopUp.wrappedValue {
                        ZStack {
                            Color("tea green")
                            VStack {
                                Spacer()
                                Text("Comfortable, Cushy, Pillowy Feel")
                                Spacer()
                                Text("  Boosts hydration & moisture \n     Strengthens skin barrier \n     Reduces oiliness by 52% \n     Minimizes pores by 41%")
                                    .padding()
                                
                                Image("estee 8")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(8)
                                
                                
                                Spacer()
                                Text("  93% Naturally Derived \n                 AND \n          EWG Verified")
                                Spacer()
                                Button(action: {
                                    self.showPopUp = false
                                }, label: {
                                    Text("Wow!")
                                        .foregroundColor(Color("mid pink"))
                                })
                                
                            }.padding()
                            .background(Color("pale pink"))
                            .cornerRadius(15)
                            .shadow(radius:10)
                                .padding()
                           
                            
                            
                        }
                        .frame(width: 350, height: 500)
                        .cornerRadius(20).shadow(radius: 20)
                    }
                }.padding()
                
                // -------------------------------------------------------------
                ZStack {
                    VStack(spacing: 20) {
                        
                        Button(action: {
                            self.popUpTwo = true
                        }, label: {
                            ZStack{
                                Color("light pink")
                                    .cornerRadius(20)
                                    .frame(width:305)
                                    .frame(height:300)
                                
                                VStack{
                                    Text("2-IN-1 FOAM CLEANSER")
                                        .foregroundColor(Color("mid pink"))
                                        .font(.custom("OptimaDisplay-Roman", size:20))
                                    Image("estee foam cleanser")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:200)
                                        .cornerRadius(30)
                                        .shadow(radius:7)
                                }
                                
                            }
                            
                        })
                    }
                    if $popUpTwo.wrappedValue {
                        ZStack {
                            Color("tea green")
                            VStack {
                                Spacer()
                                Text("Healthier-looking. Blissful-feeling.\n            Vitality-loving skin \n \n      Daily Cleanser or Weekly \n             Purifying Mask")
                                Spacer()
                                Text("      Minimizes Pores by 17% \n96% say Removes Excess Oil ")
                                    .padding()
                                
                                Image("estee 1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(8)
                                
                                
                                
                                Spacer()
                                Text("  97% Naturally Derived \n                 AND \n          EWG Verified")
                                Spacer()

                                
                                Button(action: {
                                    self.popUpTwo = false
                                }, label: {
                                    Text("Cool!")
                                        .foregroundColor(Color("mid pink"))
                                })
                            }.padding()
                                .background(Color("pale pink"))
                                .cornerRadius(15)
                                .shadow(radius:10)
                                    .padding()
                        }
                        .frame(width: 350, height: 500)
                        .cornerRadius(20).shadow(radius: 20)
                    }
                }.padding()
        // ----------------------------------------------------------------------
                ZStack {
                    VStack(spacing: 20) {
                        Button(action: {
                            self.popUpThree = true
                        }, label: {
                            
                            ZStack{
                                Color("light pink")
                                    .cornerRadius(20)
                                    .frame(width:305)
                                    .frame(height:300)
                                
                                VStack{
                                    Text("RADIANT ESSENCE LOTION")
                                        .foregroundColor(Color("mid pink"))
                                        .font(.custom("OptimaDisplay-Roman", size:20))
                                    Image("radiant essence lotion")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:200)
                                        .cornerRadius(30)
                                        .shadow(radius:7)
                                }
                               
                            }
                            
                        })
                    }
                    if $popUpThree.wrappedValue {
                        ZStack {
                            Color("tea green")
                            VStack {
                                Spacer()
                                Text("         Prep. Infuse. Glow.\n   Awakens. Balances. Calms.")
                                Spacer()
                                Text(" Reduce Oiliness by 40%\n   Minimize Pores by 31%\n      Prevents Redness")
                                    .padding()
                                
                                Image("estee 6")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(8)
                                
                                
                                Spacer()
                                Text("  95% Naturally Derived \n                 AND \n          EWG Verified")
                                Spacer()
                                Button(action: {
                                    self.popUpThree = false
                                }, label: {
                                    Text("Nice!")
                                        .foregroundColor(Color("mid pink"))
                                })
                            }.padding()
                                .background(Color("pale pink"))
                                .cornerRadius(15)
                                .shadow(radius:10)
                                    .padding()
                        }
                        .frame(width: 350, height: 500)
                        .cornerRadius(20).shadow(radius: 20)
                    }
                }.padding()
                // -----------------------------------------------------
                ZStack {
                    VStack(spacing: 20) {
                        Button(action: {
                            self.popUpFour = true
                        }, label: {
                            
                            ZStack{
                                Color("light pink")
                                    .cornerRadius(20)
                                    .frame(width:305)
                                    .frame(height:300)
                                
                                VStack{
                                    Text("AIRY LOTION")
                                        .foregroundColor(Color("mid pink"))
                                        .font(.custom("OptimaDisplay-Roman", size:20))
                                    Image("airy lotion")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:200)
                                        .cornerRadius(30)
                                        .shadow(radius:7)
                                }
                               
                            }
                            
                        })
                    }
                    if $popUpFour.wrappedValue {
                        ZStack {
                            Color("tea green")
                            VStack {
                                Spacer()
                                Text("Re-balances. Refreshes. Renews.\n      Energizes with lightweight, \n            delicate moisture")
                                Spacer()
                                Text("Suitable for sensitive, \n  blemish-prone, and\n       grumpy skin")
                                    .padding()
                                
                                Image("estee 2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(8)
                                
                                
                                Spacer()
                                Text("  92% Naturally Derived \n                 AND \n          EWG Verified")
                                Spacer()
                                Button(action: {
                                    self.popUpFour = false
                                }, label: {
                                    Text("Great!")
                                        .foregroundColor(Color("mid pink"))
                                })
                            }.padding()
                                .background(Color("pale pink"))
                                .cornerRadius(15)
                                .shadow(radius:10)
                                    .padding()
                        }
                        .frame(width: 350, height: 500)
                        .cornerRadius(20).shadow(radius: 20)
                    }
                }.padding()
            }
            Image("line divider")
            Spacer()
            Spacer()
            Spacer()
            Text("     Don't Miss It! Estée Lauder's carefully\ncalibrated essential nutrient-rich ingredients")
                .font(.custom("OptimaDisplay-Roman", size:20))
              
            Spacer()
            Spacer()
            Spacer()
            
            Image("estee 44")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .frame(width:305)
                .frame(height:300)
                .shadow(radius:4)
                
                
        }
    }
}

struct ShopCollectionPage_Previews: PreviewProvider {
    static var previews: some View {
        ShopCollectionPage()
    }
}
