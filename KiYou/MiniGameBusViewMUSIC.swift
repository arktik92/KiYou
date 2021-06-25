//
//  MiniGameBusView2.swift
//  KiYou
//
//  Created by Sia XIONG on 18/03/2021.
//

import SwiftUI
import AVKit

struct MiniGameBusViewMUSIC: View {
    @State var showPopWin = false
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
    @State var moveCloud = false
    @State var audioPlayer: AVAudioPlayer!
    
    var oneMiniGameBus: MiniGameBus
    
    var body: some View {
        ZStack{
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
            
            VStack {
                HStack {
                    ZStack{
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: 220, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .opacity(0.6)
                        HStack{
                            Image("musique")
                                .resizable()
                                .aspectRatio(contentMode:.fit)
                                .frame(width: 60, height: 60, alignment: .center)
                            Text(oneMiniGameBus.name)
                                .bold()
                                .font(.title2)
                                .foregroundColor(Color("Violet"))
                        }
                        //                }.padding(.vertical, -10.0)
                    }
                }
                Spacer()
                
                VStack {
                    VStack{
                        Text(oneMiniGameBus.description)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        Image("microphone")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .opacity(0.8)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(width: 300, height: 200, alignment: .center)
                    }
                    
                    
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .opacity(0.6)
                                    .padding(10)
                            .frame(width: 350, height: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        VStack {
                            VStack{
                                HStack {
                                    Button(action: {
                                        self.audioPlayer.play()
                                    }, label: {
                                        Image(systemName: "play.circle.fill")
                                            .resizable()
                                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                            .foregroundColor(Color("Violet"))
                                            .frame(width: 70, height: 70, alignment: .center)
                                            .foregroundColor(.black)
                                          
                                    })
                                    Spacer()
                                    Button(action: {
                                        self.audioPlayer.stop()
                                    }, label: {
                                        Image(systemName: "pause.circle.fill")
                                            .resizable()
                                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                            .foregroundColor(Color("Violet"))
                                            .frame(width: 70, height: 70, alignment: .center)
                                            .foregroundColor(.black)
                                            
                                    })
                                }.frame(width: 250)
                                
                            }
         
                    Text("A l'aide d'une cuillère à café, tape contre un autre objet et retrouve la même note")
                        .font(.system(size:15))
                        .foregroundColor(Color("Violet"))
                        .padding()
                        .frame(width: 320,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
       
                
                            
                    Button (action: {self.showPopWin.toggle()}, label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(Color("Jaune"))
                                        .frame(width: 230, height: 50, alignment: .center)
                                    Spacer()
                                    HStack{
                                        Text("Envoie-nous ta voix")
                                            .foregroundColor(Color("Violet"))
                                        Button(action: {}, label: {
                                
                                Image(systemName: "record.circle")
                                    .resizable()
                                    .frame(width: 30, height: 30, alignment: .center)
                                    .foregroundColor(Color("Violet"))
                                
                            })
                                    
                                    }
                                }
                            })
                    
                }
                }
                }
                .padding(20.0)
                Spacer()
            }
            if showPopWin == true {
                PopUpEndOfMiniGameBus(closePopUp: $showPopWin)
            }
            
        }.onAppear{
            moveCloud = true
            let sound = Bundle.main.path(forResource: "Lasound", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        
    }
    struct MiniGameBusViewMUSIC_Previews: PreviewProvider {
        static var previews: some View {
            MiniGameBusViewMUSIC(oneMiniGameBus: music)
        }
    }
}
