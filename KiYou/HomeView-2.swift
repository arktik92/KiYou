//
//  HomeView.swift
//  KiYou
//
//  Created by Esteban Semellier on 17/03/2021.
//

import SwiftUI

struct HomeView: View {
    var home: MainGame
    @State var selectedBus = 0
    @State var moveCloud = false
    @State private var animationText = false
    
    
    var body: some View {
        
        ZStack {
            VStack {
                ZStack {
                    Color.blue
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                    HStack{
                        VStack(spacing: -20){
                            
                            ZStack {
                                Image("sun")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .rotation3DEffect(.degrees(animationText ? 360 : 0), axis: (x: 0, y:0, z: 1))
                                    
                                    .onAppear(){
                                        withAnimation(Animation.linear(duration: 30).repeatForever(autoreverses: false)){
                                            
                                            self.animationText.toggle()
                                            
                                        }
                                        
                                    }
                                
                                Cloud()
                                    .offset ( x: moveCloud ? 350 :  0 )
                                    .animation(Animation.easeInOut(duration: 3).speed(0.08).repeatForever(autoreverses : true))

                            }
                            
                            
                            
                            
                            Spacer()
                        }
                        Spacer()
                            .frame(width: 250, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }.onAppear{moveCloud = true}

                   NavigationLink(
                    destination: ProfileView(),
                    label: {
                        HStack {
                            Spacer()
                                .frame(width: 300)
                            VStack{
                            Image("john")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Spacer()
                            }
                        }
                    })
                   
                  
                }
                
            }
            
            
            
            VStack {
                Spacer()
                    .frame(width: 100, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                ZStack {
                    Color.green
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    VStack {
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .frame(width: 60, height: 450, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                            Spacer()
                    }
                    VStack{
                        Spacer()
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .frame(width: 250, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                        Spacer()
                        
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .frame(width: 250, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    VStack {
                        HStack{
                            Button(action: {
                                selectedBus = 1
                            }, label: {
                                Bus1()
                                
                            })
                            Button(action: {
                                selectedBus = 3
                            }, label: {
                                Bus2()
                            })
                            
                        }
                        Spacer()
                     .frame(height: 300)
                    }
                    HStack {
                        
                        
                        VStack {
                            Spacer()
                                .frame(height: 140)
                            Button(action: {
                                selectedBus = 2
                            }, label: {
                                Bus1()
                                
                        })
                        }
                        Spacer()
                            .frame(width: 200)
                    }
                    
                }
                
            }
            VStack(spacing: -100) {
                Image("trainstation")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250, alignment: .center)
                HStack {
                    Trees()
                    Trees()
                    Trees()
                    Trees()
                }
            
                Spacer()}
            VStack{
            switch selectedBus {
            case 1:
                PopUp2(description: testMainGame1.description, title: testMainGame1.name, nbUser: testMainGame1.numberOfUsers, nbPoints: testMainGame1.points)
                    
            case 2:
                PopUp2(description: testMainGame2.description, title: testMainGame2.name, nbUser: testMainGame2.numberOfUsers, nbPoints: testMainGame2.points)
                    
            case 3:
                PopUp2(description: testMainGame3.description, title: testMainGame3.name, nbUser: testMainGame3.numberOfUsers, nbPoints: testMainGame3.points)
                    
            default:
                EmptyView()
                
            }
                Spacer()
            }
            Spacer()
            }
        }
        }

    


//----------------Preview------------------------------

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(home: testMainGame1)
    }
}
