//
//  MainGameView.swift
//  KiYou
//
//  Created by David Munive on 17/03/2021.
//

import SwiftUI
import MapKit

struct MainGameViewMONTMATRE: View {
    
    
    var oneMainGame : MainGame
    
   
    @State var timeRemaining : Int = 30
    @State var isActive = true
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

   // @State var modalViewKey : Double = 0.0
    @State var selectedKey : Key? = nil
    @State var buttonMessage = false
    var locationManager = LocationManager()
   // var oneKeyMainGame : Key
    var montmatreKey = [MontmatreKeyList]
    
    @State var keyPlace = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 48.8861, longitude: 2.3430),
        span: MKCoordinateSpan(latitudeDelta: 0.025, longitudeDelta: 0.025))
    
    
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $keyPlace, annotationItems: MontmatreKeyList) { eachKey in
                MapAnnotation(coordinate: eachKey.coordinate){
                    
                    Button(action: {
                       selectedKey = eachKey
                    }
                    
                    , label: {
                        Image("key")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60, alignment: .center)
                    })
                }
            }.edgesIgnoringSafeArea(.all)
            .sheet(item: $selectedKey, content:{keyGame in
                switch keyGame.game.name{
                
                case "Cherche et Trouve" :
                    MiniGameHuntView3(oneMiniGameHunt3: testMiniGameHuntLouvre1)
                    
                case "Quizz" :
                    MiniGameHuntView2(oneMiniGameHunt2: testMiniGameHuntLouvre2)
                    
                case "Quizz visuel":
                    MiniGameHuntView(oneMiniGameHunt: testMiniGameHuntLouvre3)
                    
                case "Défi Photo":
                    MiniGameHuntView1(oneMiniGameHunt1: testMiniGameHuntLouvre4)
                    
                default :
                    Text("Erreur")
                }
            })
            
            VStack {
    
                
                ZStack {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 200, height: 100)
                        .foregroundColor(.white)
                        .opacity(0.7)
                    
                    HStack{
                        Image("timerimg")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                        VStack{
                            Text("Temps restant")
                                .foregroundColor(Color("Violet"))
                                .font(.subheadline)
                            
                            // AJOUTER LA FONCTIONNALITE TIMER
                            Text("\(secondsToMinutesAndSeconds(seconds: timeRemaining))")
//                                Text("\(timeRemaining)")
                                .foregroundColor(Color("Jaune"))
                                .font(.title)
                                .bold()
                        }
                    }
                }
                
                Spacer()
             
                Button(action: {self.buttonMessage.toggle()}
                       ,label: {
                        ZStack {
                            Ellipse()
                                .foregroundColor(Color("Violet"))
                                .frame(width: 70, height: 70, alignment: .center)
                                .opacity(0.5)
                            Image(systemName: "bubble.left.and.bubble.right.fill")
                                .foregroundColor(Color("Jaune"))
                            
                        }
                       })
            }.sheet(isPresented: $buttonMessage, content: {
                ChatView()
            })
            
            if timeRemaining == 0 {
                PopUpViewEndOfMainGame()
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
            
    }
    
}



struct MainGameViewMONTMATRE_Previews: PreviewProvider {
    static var previews: some View {
        MainGameViewMONTMATRE(oneMainGame: testMainGame3, timeRemaining:testMainGame3.expectedMinutesToFinish)
    }
}


