//
//  MiniGameHuntView.swift
//  KiYou
//
//  Created by David Munive on 17/03/2021.
//

import SwiftUI

struct MiniGameHuntView: View {
    @State var oneMiniGameHunt : MiniGameHunt
    @State var buttonMessage = false
    
  
    var body: some View {
        ZStack{
            VStack{
            GameHuntView(gameTitle: oneMiniGameHunt.name, descriptionGame: oneMiniGameHunt.description, answerGame: $oneMiniGameHunt.answer)
       Spacer()
                Button(action: {self.buttonMessage.toggle()
                    
                    if buttonMessage == true {
                       //MainGameView( oneKeyMainGame:louvrekey2)
                        
                    }
                }
              
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

struct MiniGameHuntView_Previews: PreviewProvider {
    static var previews: some View {
        MiniGameHuntView(oneMiniGameHunt:testMiniGameHuntLouvre3)
    }
}

