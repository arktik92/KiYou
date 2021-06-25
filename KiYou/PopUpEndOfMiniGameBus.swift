//
//  PopUpEndOfMiniGameBus.swift
//  KiYou
//
//  Created by Laura LONG on 22/03/2021.
//

import SwiftUI

struct PopUpEndOfMiniGameBus: View {
    
    @Binding var closePopUp : Bool
    
    var body: some View {
        
        
        ZStack{
            Color.white
                .opacity(0.6)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
   ZStack{
         
            RoundedRectangle(cornerRadius: 25)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 25.0)
                            .stroke(Color("Violet"),lineWidth: 2.0)
            )
            
            .frame(width:300, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
         Image("confettiBG3")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width:300, height: 400, alignment: .top)
    
  
            VStack{
                Spacer()
                    .frame( height: 20)
                HStack{
                    Button (action: {
                                playSound(sound: "win", type: "mp3")

                                closePopUp.toggle()}, label: {
                    Image(systemName: "xmark.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color("Violet"))
                })
                }.frame(width: 270, alignment: .trailing)
                Spacer()
                Text("Bravo! ")
                    .font(.title)
                    .foregroundColor(Color("Violet"))
                    .bold()
                Spacer()
                Text("Tu as terminé ! ")
                    .foregroundColor(Color("Violet"))
                HStack{
                    Image("pointimg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("+ \(food.pointsToWin) pts ")
                    .bold()
                    .foregroundColor(Color("Jaune"))
                    .font(.largeTitle)
                    
                    
                }
              Spacer()
         
                    }
                }   .frame(width:280, height: 380, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}



struct PopUpEndOfMiniGameBus_Previews: PreviewProvider {
    static var previews: some View {
        PopUpEndOfMiniGameBus(closePopUp: .constant(false))
    }
}
