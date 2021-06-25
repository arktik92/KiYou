//
//  MiniGameView7.swift
//  KiYou
//
//  Created by Sia XIONG on 24/03/2021.
//

import SwiftUI
struct MiniGameBusView7: View {
    
    
    @State var moveCloud = false
    var oneMiniGame: MiniGameBus
    
    var body: some View {
        
        ZStack {
            
            Color.blue
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Cloud()
                .offset ( x: moveCloud ? 400 :  0 )
                .animation(Animation.easeInOut(duration: 3).speed(0.08).repeatForever(autoreverses : true).delay(3))
            
            Cloud()
                .offset ( x: moveCloud ? 400 : 0 )
                .animation(Animation.linear   (duration: 3).speed(0.08).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.1))
            Cloud()
                .offset ( x: moveCloud ? 0 :  400 )
                .animation(Animation.easeInOut(duration: 3).speed(0.15).repeatForever(autoreverses : true).delay(3))
            
            Cloud()
                .offset ( x: moveCloud ? 400 : 0 )
                .animation(Animation.linear   (duration: 3).speed(0.10).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.12))
            
            VStack(alignment: .center) {
            
        HStack {
            
            Image("livre")
                .resizable()
                .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text(oneMiniGame.name)
                .font(.headline)
                .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
        }
        .padding(-5.0)
            
            Text(oneMiniGame.description)
                .font(.headline)
                .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .padding(20.0)
            
            Image("mother")
                .resizable()
                .frame(width: 400, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
        
            Text("Utilise les mots suivants pour écrire un poème à maman")
                .padding()
            Text("Tomber et aimer\nMaison et bon\nChante et plante")
                .padding()
         
                Text("1. Ecris au moins 6 vers\n2. Chaque mot est utilisé dans un vers\nTu peux changer l'ordre des rimes")
                    .multilineTextAlignment(.center)
               
               Spacer()
        }
        
    }.onAppear{
        moveCloud = true
    }
    }
}
        struct MiniGameBusView4_Previews: PreviewProvider {
            static var previews: some View {
            MiniGameBusView7(oneMiniGame: readOrWrite)
            }
        }

