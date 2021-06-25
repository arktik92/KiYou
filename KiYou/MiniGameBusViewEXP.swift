//
//  MiniGameBusView6.swift
//  KiYou
//
//  Created by Sia XIONG on 18/03/2021.
//

import SwiftUI

struct MiniGameBusViewEXP: View {
    var oneMiniGame: MiniGameBus
    
    @State var showPopWin = false
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
    @State var moveCloud = false
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
            Cloud()
                .offset ( x: moveCloud ? 400 :  0 )
                .animation(Animation.easeInOut(duration: 3).speed(0.18).repeatForever(autoreverses : true).delay(3))
            
            Cloud()
                .offset ( x: moveCloud ? 400 : 0 )
                .animation(Animation.linear   (duration: 3).speed(0.15).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.1))
            Cloud()
                .offset ( x: moveCloud ? 0 :  400 )
                .animation(Animation.easeInOut(duration: 3).speed(0.05).repeatForever(autoreverses : true).delay(2))
            
            Cloud()
                .offset ( x: moveCloud ? 400 : 0 )
                .animation(Animation.linear   (duration: 3).speed(0.10).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.1))
            }
            
            VStack {
                HStack {
                    ZStack{
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: 220, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .opacity(0.6)
                            
                        HStack{
                            Image("biochemistry")
                                .resizable()
                                .aspectRatio(contentMode:.fit)
                                .frame(width: 60, height: 60, alignment: .center)
                    Text(oneMiniGame.name)
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color("Violet"))
                        }
//                }.padding(.vertical, -10.0)
                }
                }
        
                
                    VStack{
                        Text(oneMiniGame.description)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        .padding()
                    ZStack {
                        Image("construirephoto")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .opacity(0.8)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(width: 300, height: 200, alignment: .center)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "play.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("Jaune"))
                            .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    })
                }
                }
                
                
                ZStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .opacity(0.6)
                            .padding(20)
                    .frame(width: 390, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    VStack{
                        Text("Il te faut une bouteille en plastique et un mouchoir en papier")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("Violet"))
                            .multilineTextAlignment(.center)
                            .padding(10.0)
                    .frame(width: 370, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Text("1. Remplis une bouteille en plastique d'eau\n3. Humidifie le mouchoir en plastique que tu placeras au dessus de la bouteille à la place du bouchon\n4. Coupe le mouchoir au bord de l'ouverture de la bouteille\n5. Maintenant, retourne la bouteille\n6. Tiens donc...")
                    .font(.system(size:15))
                    .foregroundColor(Color("Violet"))
                    .frame(width: 310,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                Button (action: {self.showPopWin.toggle()}, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color("Jaune"))
                                    .frame(width: 230, height: 50, alignment: .center)
                                Spacer()
                                HStack{
                                    Text("Envoie-nous ta création")
                                        .foregroundColor(Color("Violet"))
                                    ZStack {
                                        Button(action: {
                                            self.isShowPhotoLibrary = true
                                        }) {
                                            
                                            Image(systemName: "camera.circle.fill")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .foregroundColor(Color("Violet"))
                                                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        }
                                        
                                    }
                                }
                            }
                        })
                    }
                 
                }
                
                
            }
            if showPopWin == true {
                PopUpEndOfMiniGameBus(closePopUp: $showPopWin)
            }
            
        }.onAppear{
            moveCloud = true
        }
    }
    
    struct MiniGameBusViewEXP_Previews: PreviewProvider {
        static var previews: some View {
            MiniGameBusViewEXP(oneMiniGame: experience)
        }
    }
}
