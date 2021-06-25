//
//  MiniGameHuntView1.swift
//  KiYou
//
//  Created by Laura LONG on 19/03/2021.
//

import SwiftUI
struct MiniGameHuntView1: View {
    @State var oneMiniGameHunt1 : MiniGameHunt
    @State var buttonMessage1 = false
   
  
    var body: some View {
        ZStack{
            VStack{
            GameHuntView(gameTitle: oneMiniGameHunt1.name, descriptionGame: oneMiniGameHunt1.description, answerGame: $oneMiniGameHunt1.answer)
       Spacer()
                Button(action: {self.buttonMessage1.toggle()}
                       
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

struct MiniGameHuntView1_Previews: PreviewProvider {
    static var previews: some View {
        MiniGameHuntView1(oneMiniGameHunt1:testMiniGameHuntLouvre4)
    }
}
