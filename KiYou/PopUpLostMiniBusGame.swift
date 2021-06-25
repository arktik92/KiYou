//
//  PopUpLostMiniBusGame.swift
//  KiYou
//
//  Created by Laura LONG on 22/03/2021.
//

import SwiftUI

struct PopUpLostMiniBusGame: View {
    var body: some View {
        ZStack{
            Color.white
                .opacity(0.6)
            ZStack{
                
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 25.0)
                                    .stroke(Color("Violet"),lineWidth: 2.0)
                    )
                    
                    .frame(width:300, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                VStack{
                    Image(systemName: "xmark.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color("Violet"))
                    Spacer()
                    Text("Dommage ! ")
                        .font(.title)
                        .foregroundColor(Color("Violet"))
                        .bold()
                        .padding(.vertical, 40)
               
                    Text("Réessaie ou tente ta chance avec un nouveau Mini Jeu ! ")
                        .foregroundColor(Color("Violet"))
                        .padding(.vertical, 40)
                    
                } .frame(width: 260, height: 360, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
               
            }
       
        }   .frame(width:280, height: 380, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}


struct PopUpLostMiniBusGame_Previews: PreviewProvider {
    static var previews: some View {
        PopUpLostMiniBusGame()
    }
}
