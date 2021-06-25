//
//  BusView.swift
//  KiYou
//
//  Created by David Munive on 17/03/2021.
//

import SwiftUI

struct BusView: View {
    
    
//    @EnvironmentObject var settings: GameSettings
//    @StateObject var settings = GameSettings()
    
     @State var timeRemaining : Int = 90
     @State var isActive = true
     
     let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    

    
    var myMinibus : Bus
    @State var hour : Int = 14
    @State var minute : Int = 58
    @State var ButtonDriver = false
    @State var open = false

    @State var showPopUp = true
    
    var body: some View {
   
        ZStack{
            
            Image ("buse")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .offset(x:-19)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//                .position(x: 220.0, y: 680.0)
            
            VStack {
                HStack {
                    VStack {
                        HStack {
                            Image( "pointimg")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                       
                        Text("\(testSetting1.score)")
                            .bold()
                            .foregroundColor(Color("Jaune"))
                            .font(.title2)
                        }
                        Spacer()
                    }
                }.frame(width: 350, height: 20, alignment: .trailing)
                HStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("Jaune"))
                            .frame(width: 110, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                           
                            Button(action: {self.ButtonDriver.toggle()
                            }, label: {
                                VStack{
                                Image("driver")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30, alignment: .center)
                            Text("Je t'écoute")
                                .foregroundColor(Color("Violet"))
                                .font(.subheadline)
                        }
                            })
                    }
                    
                    Spacer()
                    HStack{
                        ZStack {
                            HStack{
                                Image("timerimg")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50, alignment: .center)
                            VStack{Text("Temps restant")
                                .bold()
                                .font(.footnote)
                                .foregroundColor(Color("Violet"))
                               Text(secondsToMinutesAndSeconds(seconds: timeRemaining))
                                .bold()
                                .foregroundColor(Color("Jaune"))
                                .font(.title2)
                            }
                                   
                            }
                        }
                    }
                }.padding(.horizontal,30)
                Spacer()
 
                VStack(alignment:.center){
                    NavigationLink(
                        destination: MiniGameBusViewART(oneMiniGame: drawing),
                        label: {
                            Activityview(open: $open, imageName: "art", delay: 0.6)
                        })
                   
                    
                    HStack (spacing :150){
                        NavigationLink(
                            destination: MiniGameBusViewBOOK1(oneMiniGame: experience),
                            label: {
                                Activityview(open: $open, imageName: "livre", delay : 0.4)
                            })
                        
                        NavigationLink(
                    destination: MiniGameBusViewFOOD1(oneMiniGame: food),
                            label: {
                                Activityview(open: $open, imageName: "food", delay : 0.8)
                            })
                    }
                    
                    HStack (spacing :200){
                        NavigationLink(
                            destination: MiniGameBusViewMUSIC(oneMiniGameBus: music),
                            label: {
                                Activityview(open: $open, imageName: "musique", delay : 0.2)
                            })
                        NavigationLink(
                            destination: MiniGameBusViewSPORT(oneMiniGame: bowling),
                            label: {
                                Activityview(open: $open, imageName: "sport", delay : 1.0)
                            })
                    
                    }
                    HStack (spacing :240){
                        NavigationLink(
                            destination: MiniGameBusViewEXP(oneMiniGame: experience),
                            label: {
                                Activityview(open: $open, imageName: "biochemistry")
                            })
                        NavigationLink(
                            destination: MiniGameBusViewBUILT(oneMiniGame: build),
                            label: {
                                Activityview(open: $open, imageName: "idea", delay : 1.2)
                            })
                    
                    }
                     
                }
 
                          Button(action: {
                                    playSound(sound: "bells", type: "mp3")
                                    self.open.toggle()}, label: {
                                Image("john")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 250, height: 250, alignment: .bottom)
            //                        .offset(y:40)
                           })
                    
                    
            
                
             
              
            }
            .sheet(isPresented: $ButtonDriver, content: {
                ChatViewDriver()
            })
           
        
            
            if showPopUp {
                PopUp_BusView(show:$showPopUp)
            }
            
            if timeRemaining == 0 {
                PopUp_StartMainGame()
            }
            
        }
        .onReceive(timer) {time in
            guard self.isActive else{ return }
            
            if self.timeRemaining > 0 {
                self.timeRemaining -= 1
            }
            
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)){ _ in
            self.isActive = false
            
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)){ _ in
            self.isActive = true
        }
        .navigationBarItems(trailing:
                                NavigationLink(
                                    destination: ProfileView(),
                                    label: {
                                        Image("john")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    }))
    }
    }


struct BusView_Previews: PreviewProvider {
    static var previews: some View {
        BusView(myMinibus: busLouvre)
    }
}

