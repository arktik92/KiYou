//
//  MiniGameHuntView3.swift
//  KiYou
//
//  Created by Laura LONG on 19/03/2021.
//

import SwiftUI

struct MiniGameHuntView3: View {
    @State var oneMiniGameHunt3 : MiniGameHunt
    @State var buttonMessage3 = false
        
    
        var body: some View {
            ZStack{
                VStack{
                GameHuntView(gameTitle: oneMiniGameHunt3.name, descriptionGame: oneMiniGameHunt3.description, answerGame: $oneMiniGameHunt3.answer)
           Spacer()
                    Button(action: {self.buttonMessage3.toggle()}
                           
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

struct MiniGameHuntView3_Previews: PreviewProvider {
    static var previews: some View {
        MiniGameHuntView3(oneMiniGameHunt3: testMiniGameHuntLouvre1)
    }
}
