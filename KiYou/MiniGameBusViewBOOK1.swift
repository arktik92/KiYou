//
//  MiniGameBusView6.swift
//  KiYou
//
//  Created by Sia XIONG on 18/03/2021.
//

import SwiftUI

struct MiniGameBusViewBOOK1: View {
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
                            Image("livre")
                                .resizable()
                                .aspectRatio(contentMode:.fit)
                                .frame(width: 60, height: 60, alignment: .center)
                    Text("Lire/Ecrire")
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color("Violet"))
                        }
//                }.padding(.vertical, -10.0)
                }
                }
        
                
                    VStack{
                        Text("Avec ces 6 mots, raconte une histoire")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        .padding()
                    ZStack {
                        Image("mother")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .opacity(0.8)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(width: 300, height: 200, alignment: .center)
                    
                }
                }
                
                
                VStack {
                    ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .opacity(0.6)
                                .padding(20)
                        .frame(width: 390, height: 430, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        VStack{
                            Text("Utilise les mots suivants pour écrire un poème à maman")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color("Violet"))
                                .multilineTextAlignment(.center)
                                .padding(10.0)
                        .frame(width: 370, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("Tomber - Aimer\nMaison - Bon\nChante - Plante")
                        .bold()
                        .font(.system(size:20))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.blue)
                        .frame(width: 310,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                            Text("1. Ecris au moins 6 vers\n2. Chaque mot est utilisé dans un vers\nTu peux changer l'ordre des rimes")
                                .font(.system(size:17))
                                .foregroundColor(Color("Violet"))
                                .frame(width: 310,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
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
                            Spacer()
                        }
                     
                    }
                    Spacer()
                        .frame( height: 60)
                }
                
                
            }
            if showPopWin == true {
                PopUpEndOfMiniGameBus(closePopUp: $showPopWin)
            }
            
        }.onAppear{
            moveCloud = true
        }
    }
    
    struct MiniGameBusViewBOOK1_Previews: PreviewProvider {
        static var previews: some View {
            MiniGameBusViewBOOK1(oneMiniGame: readOrWrite)
        }
    }
}
