//
//  MiniGameBusView5.swift
//  KiYou
//
//  Created by Sia XIONG on 18/03/2021.
//

import SwiftUI

struct MiniGameBusView5: View {
    
    var oneMiniGame: MiniGameBus
    @State var moveCloud = false
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Cloud(posY: 140)
                .offset ( x: moveCloud ? 400 :  0 )
                .animation(Animation.easeInOut(duration: 3).speed(0.18).repeatForever(autoreverses : true).delay(3))
            
            Cloud(posY: 80)
                .offset ( x: moveCloud ? 400 : 0 )
                .animation(Animation.linear   (duration: 3).speed(0.15).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.1))
            Cloud(posY: 650)
                .offset ( x: moveCloud ? 0 :  400 )
                .animation(Animation.easeInOut(duration: 3).speed(0.05).repeatForever(autoreverses : true).delay(2))
            
            Cloud(posY: 500)
                .offset ( x: moveCloud ? 400 : 0 )
                .animation(Animation.linear   (duration: 3).speed(0.10).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.1))
            
            VStack {
                HStack{
                    Image("idea")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text(oneMiniGame.name)
                   
                }
                Spacer()
                
                Text(oneMiniGame.description)
                    .padding(0.0)
                Image("carton")
                    .resizable()
                    .frame(width: 370, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(40.0)
                Text("1. Prends du carton et peinds-le\n2. Découpe le carton en plein de formes différentes\n3. Fais des entailles sur chacun des morceaux\n4. Maintenant assemble-les\n5. Essaie de faire un animal")
                  
                    .frame(width: 370)
                Spacer()
                Spacer()
            }
           
        }.onAppear{
            moveCloud = true
        }
       
    }
    
    struct MiniGameBusView5_Previews: PreviewProvider {
        static var previews: some View {
            MiniGameBusView5(oneMiniGame: build)
        }
    }
}
