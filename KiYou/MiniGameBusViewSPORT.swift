//
//  MiniGameBusView1.swift
//  KiYou
//
//  Created by Sia XIONG on 18/03/2021.
//

import SwiftUI

struct MiniGameBusViewSPORT: View {
    
    @State var showPopWin = false
    @State var moveCloud = false
    @StateObject var settings = GameSettings()
    var oneMiniGame: MiniGameBus
    
    var body: some View {
        
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
       
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
                
            VStack  {
                    
                    HStack {
                        ZStack{
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 220, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .opacity(0.6)
                            HStack{
                                Image("sport")
                                    .resizable()
                                    .aspectRatio(contentMode:.fit)
                                    .frame(width: 60, height: 60, alignment: .center)
                        Text(oneMiniGame.name)
                            .bold()
                            .font(.title2)
                            .foregroundColor(Color("Violet"))
                            }
                   .padding(.vertical, -10.0)
                    }
                    }
                    VStack{
                        
                        VStack{
                
                            Text(oneMiniGame.description)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                    
                            Image("quilles")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .opacity(0.8)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .frame(width: 300, height: 200, alignment: .center)
                        
     
                        ZStack{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .opacity(0.6)
                                .padding(20)
                                .frame(width: 390, height: 460, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        VStack {
                        Text("Tu as besoin de 10 bouteilles en plastique vides et un ballon")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("Violet"))
                            .multilineTextAlignment(.center)
                            .frame(width: 340, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                     
                        Text("1. Remplis le fond de chaque bouteille, avec du sable ou de l'eau\n \n2. Personnalise 5 quilles (Peins-les. Colle des images)\n\n3. Dispose les bouteilles en triangle")
                            .font(.system(size:15))
                            .foregroundColor(Color("Violet"))
                            .frame(width: 340, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                        Text("But du jeu")
                            .fontWeight(.bold)
                            .font(.system(size:25))
                            .foregroundColor(Color("Jaune"))
                            .padding(.vertical,5)
                            
                        Text("Fais tomber les bouteilles non personnalisées, en moins de coup possible")
                            .bold()
                            .font(.system(size:15))
                            .multilineTextAlignment(.center)
                            .padding()
                            .foregroundColor(Color("Violet"))
                            .frame(width: 340, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                    Button (action: {
                        settings.score += 1
                        self.showPopWin.toggle()
                    }
                            , label: {
                        ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color("Jaune"))
                                    .frame(width: 250, height: 50, alignment: .center)
                            HStack{
                
                                Text("Envoie-nous ta création")
                                    .foregroundColor(Color("Violet"))
                            Image(systemName:"camera.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color("Violet"))
                                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                        }
                        })
                        }
                        }
                            Spacer()
                               .frame( height: 50)
                        }
    //                    .frame(width: 380, height: 360, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    //                    Spacer()
                            
                }
                }
                    
                    if showPopWin == true {
                        PopUpEndOfMiniGameBus(closePopUp: $showPopWin)
                }
                    Spacer()
                        
            .onAppear{
            moveCloud = true
        }
        .environmentObject(settings)
        }
    }
}
    
    

struct MiniGameBusViewSPORT_Previews: PreviewProvider {
    static var previews: some View {
     MiniGameBusViewSPORT(oneMiniGame: bowling)
        
    }
}

