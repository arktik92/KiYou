//
//  SwiftUIView.swift
//  KiYou
//
//  Created by Laura LONG on 19/03/2021.
//

import SwiftUI

struct PopUpWINView: View {
    
        @State var showWin  : Bool
        
        var body: some View {
            
            ZStack {
                Color(.white)
                    .opacity(0.6)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.green)
                            .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(RoundedRectangle(cornerRadius: 25.0)
                                            .stroke(Color("Violet"),lineWidth: 2.0)
                                            .opacity(0.6)
                            )
                        VStack {
                            Text("Bien Joué !")
                                .foregroundColor(.white)
                                .bold()
                            Text("Tu as gagné ta clé")
                                .foregroundColor(.white)
                                .bold()
                            Image("key")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        
                    
                    }
                    
                    Button(action: {self.showWin.toggle()}
                           
                           , label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color("Jaune"))
                                    .frame(width:250, height:40 , alignment: .center)
                                Text("Revenir à la chasse")
                                
                                    .foregroundColor(Color("Violet"))
                            }
                        
                    })
}
            }
        }
}
struct PopUpWINView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpWINView(showWin: true)
    }
}
