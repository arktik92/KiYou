//
//  MiniGameHuntView2.swift
//  KiYou
//
//  Created by Laura LONG on 19/03/2021.
//

import SwiftUI

struct MiniGameHuntView2: View {
    
    @State var oneMiniGameHunt2 : MiniGameHunt
    @State var buttonMessage2 = false
        
    
        var body: some View {
            ZStack{
                VStack{
                GameHuntView(gameTitle: oneMiniGameHunt2.name, descriptionGame: oneMiniGameHunt2.description, answerGame: $oneMiniGameHunt2.answer)
           Spacer()
                    Button(action: {self.buttonMessage2.toggle()}
                           
                           ,label: {
                            ZStack {
                                Ellipse()
                                .foregroundColor(Color("Violet"))
                                .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .opacity(0.6)
                                Image(systemName: "bubble.left.and.bubble.right.fill")
                                    .foregroundColor(Color("Jaune"))
                                    .opacity(0.6)
                            }
                            })
                    }
                }
            }
    }


struct MiniGameHuntView2_Previews: PreviewProvider {
    static var previews: some View {
        MiniGameHuntView2(oneMiniGameHunt2: testMiniGameHuntLouvre2)
    }
}
