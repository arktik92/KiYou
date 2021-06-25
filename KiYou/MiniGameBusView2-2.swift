//
//  MiniGameBusView2.swift
//  KiYou
//
//  Created by Sia XIONG on 18/03/2021.
//

import SwiftUI
import AVKit

struct MiniGameBusView2: View {
    
    @State var moveCloud = false
    @State var audioPlayer: AVAudioPlayer!
    
    var oneMiniGameBus: MiniGameBus
    
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.all)
                        Cloud(posY: 300)
                            .offset ( x: moveCloud ? 400 :  0 )
                            .animation(Animation.easeInOut(duration: 3).speed(0.10).repeatForever(autoreverses : true).delay(3))
            
                        Cloud(posY: 200)
                            .offset ( x: moveCloud ? 400 : 0 )
                            .animation(Animation.linear   (duration: 3).speed(0.12).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.1))
                        Cloud(posY: 600)
                            .offset ( x: moveCloud ? 0 :  400 )
                            .animation(Animation.easeInOut(duration: 3).speed(0.15).repeatForever(autoreverses : true).delay(3))
            
                        Cloud(posY: 450)
                            .offset ( x: moveCloud ? 400 : 0 )
                            .animation(Animation.linear   (duration: 3).speed(0.10).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.17))
            
            VStack {
                
                HStack {
                    Image("musique")
                        .resizable()
                        .frame(width: 70, height: 70)
                    Text(oneMiniGameBus.name)
                }
                Spacer()
                
                VStack {
                    Text(oneMiniGameBus.description)
                    Image("microphone")
                        .resizable()
                        .frame(width: 370, height: 240, alignment: .center)
                    
                    VStack{
                        
                        HStack {
                            Button(action: {
                                self.audioPlayer.play()
                            }, label: {
                                Image(systemName: "play.circle.fill")
                                    .resizable()
                                    .frame(width: 70, height: 70, alignment: .center)
                                    .foregroundColor(.black)
                                    .padding(40.0)
                            })
                            Button(action: {
                                self.audioPlayer.stop()
                            }, label: {
                                Image(systemName: "pause.circle.fill")
                                    .resizable()
                                    .frame(width: 70, height: 70, alignment: .center)
                                    .foregroundColor(.black)
                                    .padding(40.0)
                            })
                        }
                        
                    }
                    Text("A l'aide d'une cuillère à café, tape contre un autre objet et retrouve la même note")
                    
                }
                
                Button(action: {}, label: {
    
                    Image(systemName: "record.circle")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .foregroundColor(.red)
                    
                })
                .padding(20.0)
                Spacer()
            }
            
        }.onAppear{
                        moveCloud = true
            let sound = Bundle.main.path(forResource: "Lasound", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        
    }
    struct MiniGameBusView2_Previews: PreviewProvider {
        static var previews: some View {
            MiniGameBusView2(oneMiniGameBus: music)
        }
    }
}
