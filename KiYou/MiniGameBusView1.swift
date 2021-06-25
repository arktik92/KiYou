//
//  MiniGameBusView1.swift
//  KiYou
//
//  Created by Sia XIONG on 18/03/2021.
//

import SwiftUI

struct MiniGameBusView1: View {
    
    @State var moveCloud = false
    var oneMiniGame: MiniGameBus
    
    var body: some View {
        
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            Cloud(posY: 100)
                .offset ( x: moveCloud ? 400 :  0 )
                .animation(Animation.easeInOut(duration: 3).speed(0.08).repeatForever(autoreverses : true).delay(4))
            
            Cloud(posY: 250)
                .offset ( x: moveCloud ? 400 : 0 )
                .animation(Animation.linear   (duration: 3).speed(0.09).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(3))
            Cloud(posY: 300)
                .offset ( x: moveCloud ? 50 :  400 )
                .animation(Animation.easeInOut(duration: 3).speed(0.15).repeatForever(autoreverses : true).delay(2))
            
            Cloud(posY: 450)
                .offset ( x: moveCloud ? 400 : 0 )
                .animation(Animation.linear   (duration: 3).speed(0.10).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.1))
            
            VStack {
                
                HStack {
                    Image("sport")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                    
                    Text(oneMiniGame.name)
                     
                }
                VStack{
                    Text(oneMiniGame.description)
                        .fontWeight(.black)
                        .padding(23.0)
                    
                    Text("Tu as besoin de 10 bouteilles en plastique vides et un ballon")
                        .fontWeight(.heavy)
                
                    
                    Text("1. Remplis le fond de chaque bouteille, avec du sable ou de l'eau\n2. Personnalise 5 quilles (Peins-les. Colle des images)\n3. Dispose les bouteilles en triangle")
                }
                .padding(17.0)
                Image("quilles")
                    .resizable()
                    .frame(width:370
                           , height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(20.0)
                Text("But du jeu :")
                    .fontWeight(.bold)
                
                Text("Fais tomber les bouteilles non personnalisées, en moins de coup possible")
                   
                  Spacer()
            }
          
        }.onAppear{
            moveCloud = true
        }
    }
    }
    
    struct MiniGameBusView1_Previews: PreviewProvider {
        static var previews: some View {
            MiniGameBusView1(oneMiniGame: bowling)
            
        }
    }

