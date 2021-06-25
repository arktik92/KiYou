//
//  GameHuntView.swift
//  KiYou
//
//  Created by Laura LONG on 19/03/2021.
//

import SwiftUI
struct GameHuntView: View {
    
    var gameTitle : String
    var descriptionGame : String
    
    @Binding var answerGame : String
    @State var hh = false
    var body: some View {
        VStack(spacing:20) {
            ZStack {
                RoundedRectangle(cornerRadius: 15.0)
                    .foregroundColor(Color("Jaune"))
                    .frame(width:380 , height: 40, alignment: .center)
          
            Text(gameTitle)
                .foregroundColor(Color("Violet"))
                .bold()
                .font(.title3)
            }
            HStack {
                VStack{
                    Text("Ta récompense ")
                        .foregroundColor(Color("Violet"))
                    HStack {
                        Image("key")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("+ 1")
                            .font(.custom("Sensei-Medium.otf", size: 44))
                            .foregroundColor(Color("Violet"))
                    }
                    
                }
                Spacer()
                VStack{
                    Text("Tes coéquipiers ")
                        .foregroundColor(Color("Violet"))
                    HStack {
                        Image("melanie")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Image(user3.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }
            } .padding(.horizontal,20)
            
            VStack{
                ZStack{
                 
                }
                Text(descriptionGame)
                    .foregroundColor(Color("Violet"))
                    .font(.body)
                    .font(.custom("Lato-Light.ttf", size: 20))
                    .padding(.vertical, 20)
                ZStack{
                    
                    TextField(" Ecrit ta réponse", text:$answerGame)
                        .padding()
                        .foregroundColor(Color("Violet"))
                        .multilineTextAlignment(.center)
                        .font(.body)
                        .frame(width: 378, height : 38)
                        .background(RoundedRectangle(cornerRadius: 20.0)
                                        .stroke(Color("Violet"), lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                        .background(Color.white)
                        )
                        .padding(.vertical,50)
                }
                
                ValidationButton(validateQV1: $hh, titleButtonV: "Valide ta réponse", widthButtonV: 150, heightButtonV: 70)
            }//.position(x: 195, y: 280)
            
        } .background(RoundedRectangle(cornerRadius:20.0))
        .foregroundColor(.white)
        
        
    }
}
