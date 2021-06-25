//
//  MiniGameBusView3.swift
//  KiYou
//
//  Created by Sia XIONG on 18/03/2021.
//

import SwiftUI

struct MiniGameBusViewFOOD1: View {
    @State var showPopWin = false
    @State var moveCloud = false
    var oneMiniGame: MiniGameBus
    
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
            Cloud()
                .offset ( x: moveCloud ? 400 :  0 )
                .animation(Animation.easeInOut(duration: 3).speed(0.18).repeatForever(autoreverses : true).delay(3))
            
            Cloud()
                .offset ( x: moveCloud ? 400 : 0 )
                .animation(Animation.linear   (duration: 3).speed(0.15).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.1))
            Cloud()
                .offset ( x: moveCloud ? 0 :  400 )
                .animation(Animation.easeInOut(duration: 3).speed(0.05).repeatForever(autoreverses : true).delay(2))
            
            Cloud()
                .offset ( x: moveCloud ? 400 : 0 )
                .animation(Animation.linear   (duration: 3).speed(0.10).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.1))
            }
            VStack {
                HStack {
                    ZStack{
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: 220, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .opacity(0.6)
                        HStack{
                            Image("food")
                                .resizable()
                                .aspectRatio(contentMode:.fit)
                                .frame(width: 60, height: 60, alignment: .center)
                    Text(oneMiniGame.name)
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color("Violet"))
                        }
//                }.padding(.vertical, -10.0)
                }
                }
               
                VStack{
                    Text(oneMiniGame.description)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    .padding()
            
                    Image("fruits5")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .opacity(0.8)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 300, height: 200, alignment: .center)
                }
                VStack {
                    ZStack{
                         
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .opacity(0.6)
                                .padding(20)
                                .frame(width: 390, height: 420, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        VStack{
                        Text("Des fruits de saisons bien mûres, du miel ou un peu de sucre")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("Violet"))
                            .multilineTextAlignment(.center)
                            .padding(10.0)
                            .frame(width: 340, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                 
                        Text("1. Verse de l'eau dans une jarre ou une carafe\n2. Lave les fruits et coupe-les en petit morceaux \n3. Mets les fruis coupés dans la carafe\n4. Ajoute du miel ou du sucre")
                            .font(.system(size:15))
                            .foregroundColor(Color("Violet"))
                            .frame(width: 310, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        Text("Mélange le tout. Ajuste à ton goût")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("Violet"))
                            .multilineTextAlignment(.center)
                            .padding(10.0)
                            .frame(width: 340, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Ta potion magique est prête!")
                            .fontWeight(.bold)
                            .font(.system(size:20))
                            .foregroundColor(Color("Jaune"))
                            .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                            
                            
                            Button (action: {self.showPopWin.toggle()}, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color("Jaune"))
                                    .frame(width: 250, height: 50, alignment: .center)
                            
                            HStack{
                            Text("Envoie-nous ta création")
                                    .foregroundColor(Color("Violet"))
                            }
                                
                        }
                        })
                        }
                            }
                    Spacer()
                        .frame(height: 40)
                }
          
                }
         
                
                if showPopWin == true {
                    PopUpEndOfMiniGameBus(closePopUp: $showPopWin)
            }
          
            
        }.onAppear{
            moveCloud = true
        }
    }
}



struct MiniGameBusViewFOOD1_Previews: PreviewProvider {
    static var previews: some View {
        MiniGameBusViewFOOD1(oneMiniGame: food)
    }
}

