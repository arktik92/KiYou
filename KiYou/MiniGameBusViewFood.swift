//
//  MiniGameBusView3.swift
//  KiYou
//
//  Created by Sia XIONG on 18/03/2021.
//

import SwiftUI

struct MiniGameBusViewFood: View {
    
    @State var moveCloud = false
    var oneMiniGame: MiniGameBus
    
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Cloud(posY: 10)
                .offset ( x: moveCloud ? 400 :  0 )
                .animation(Animation.easeInOut(duration: 3).speed(0.08).repeatForever(autoreverses : true).delay(3))
            
            Cloud(posY: 80)
                .offset ( x: moveCloud ? 400 : 0 )
                .animation(Animation.linear   (duration: 3).speed(0.05).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.1))
            Cloud(posY: 600)
                .offset ( x: moveCloud ? 0 :  400 )
                .animation(Animation.easeInOut(duration: 3).speed(0.15).repeatForever(autoreverses : true).delay(3))
            
            Cloud(posY: 450)
                .offset ( x: moveCloud ? 400 : 0 )
                .animation(Animation.linear   (duration: 3).speed(0.10).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.1))
            VStack {
                
                HStack {
                    Image("food")
                        .resizable()
                        .frame(width: 70, height: 70)
                    Text(oneMiniGame.name)
                }
                Spacer()
                Spacer()
                Spacer()
                
                Text(oneMiniGame.description)
                    .font(.headline)
                
                Image("fruits5")
                    .resizable()
                    .padding(.bottom)
                    .frame(width: 350, height: 250)
                
                VStack {
                Spacer()
                    Text("Des fruits de saisons bien mûres, du miel ou un peu de sucre")
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .lineLimit(10)
                    
                    
                    
                    Text("1. Verse de l'eau dans une jarre ou une carafe\n2. Lave les fruits et coupe-les en petit morceaux \n3. Mets les fruis coupés dans la carafe\n4. Ajoute du miel ou du sucre")
                   Spacer()
                    Text("Mélange le tout. Ajuste à ton goût")
                    
                    Text("Ta potion magique est prête!")
                    Spacer()
                    Spacer()
                    
                }
            }
            .padding(.top, 130)
            
        }.onAppear{
            moveCloud = true
        }
    }
}



struct MiniGameBusViewFood_Previews: PreviewProvider {
    static var previews: some View {
        MiniGameBusViewFood(oneMiniGame: food)
    }
}

