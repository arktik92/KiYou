//
//  ActivityView.swift
//  KiYou
//
//  Created by Laura LONG on 19/03/2021.
//

import SwiftUI




struct Activityview: View {
    @State var validateActivity = false

    @Binding var open : Bool
    var imageName:String
    var delay = 0.0
    var body: some View {
        
//        Button(action:
//                {self.validateActivity.toggle()
//                    playSound(sound: "Buttonlike", type: "mp3")
//                }
//               ,label:{
//
                ZStack{
                    Ellipse()
                        .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }
                .scaleEffect(open ? 1: 0)
                .animation(Animation.spring(response : 0.2, dampingFraction: 0.5, blendDuration:0).delay(Double(delay)))
               
                
//               })
    
    }
    }
    



