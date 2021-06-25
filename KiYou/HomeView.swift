//
//  HomeView.swift
//  KiYou
//
//  Created by Esteban Semellier on 17/03/2021.
//

import SwiftUI

struct HomeView: View {
    var home : MainGame
    @State var selectedBus = 0
    var body: some View {
        
        
        //backGround
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Color.blue
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 550)
            
            
            
            //cloud
            Cloud(posX: 100, posY: 10)
            Cloud(posX: 310, posY: 80)
            
            
            //roads
            
            //vertical road
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: 60, height: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
            VStack {
                Spacer()
                Spacer()
                
                //horizontalRoad1
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 250, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
                Spacer()
                
                
                //horizontalRoad2
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 250, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
                Spacer()
                
            }
            
            //trainStation
            ZStack {
                VStack{
                    VStack{
                        Image("trainstation")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 250, height: 250, alignment: .center)
                        
                        
                        
                        //trees
                        
                        HStack(spacing:20) {
                            Trees()
                            Trees()
                            Trees()
                            Trees()
                        }.offset(y: -100)
                        
                    }
                    
                    
                    
                    
                    
                    
                    //Buttons
                    HStack{
                        
                        VStack{
                            
                            
                            
                            ZStack {
                                Button(action: {
                                    selectedBus = 1
                                }, label: {
                                    Bus1()
                                    
                                }).offset(x: -10, y: -160)
                                
                                
                                
                                
                            }
                            
                            
                            
                            
                            ZStack {
                                Button(action: {
                                    selectedBus = 2
                                }, label: {
                                    Bus1()
                                }).offset(x: -10, y: -140)
                                
                                
                                
                            }
                            
                            
                        }
                        ZStack {
                            Button(action: {
                                selectedBus = 3
                            }, label: {
                                Bus2()
                            }).offset(x: 10, y: -260)
                            
                            
                        }
                    }
                    
                    
                    
                  //switch popUp
                }
                switch selectedBus {
                case 1:
                    PopUp2(description: testMainGame1.description, title: testMainGame1.name, nbUser: testMainGame1.numberOfUsers, nbPoints: testMainGame1.points)
                        .offset(x: 0, y: -250)
                case 2:
                    PopUp2(description: testMainGame2.description, title: testMainGame2.name, nbUser: testMainGame2.numberOfUsers, nbPoints: testMainGame2.points)
                        .offset(x: 0, y: -250)
                case 3:
                    PopUp2(description: testMainGame3.description, title: testMainGame3.name, nbUser: testMainGame3.numberOfUsers, nbPoints: testMainGame3.points)
                        .offset(x: 0, y: -250)
                default:
                    EmptyView()
                }
                
            }
            
        }
    }
    
}












//----------------Preview------------------------------

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(home: testMainGame1)
    }
}
