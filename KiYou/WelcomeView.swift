//
//  WelcomeView.swift
//  KiYou
//
//  Created by David Munive on 17/03/2021.
//

import SwiftUI


// la navigation est faite il manque les images,les,font  les ,un logo,

struct WelcomeView: View{
    
    
    
    var body: some View {
        
        NavigationView{
            
            
            TabView{
                ZStack{
                    Color.red
                    
                    
                    VStack{
                        
                        
                        ZStack{
                            Circle()
                                .padding(19.0)
                                .foregroundColor(.white)
                                .padding(50)
                            Image("busb")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            VStack{
                                Spacer()
                                Text("Embarque dans le bus magique de ton choix pour découvrir le trésor")
                                    .multilineTextAlignment(.center)
                                    .frame (width: 170, height: 96, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding(80.0)
                                
                                
                            }
                        }
       
                            .padding(37.0)
                    }
                }

                        .tag(0)
            
            
                ZStack{
                Color.white
                
                
                VStack{
                    
                    
                    ZStack{
                        Circle()
                            .padding(50.0)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .padding(50)
                        Image("mini")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        VStack{
                            Spacer()
                            Text("Choisi tes mini jeux")
                                .multilineTextAlignment(.center)
                                .frame (width: 170, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding(80.0)
                            
                        }
                    }
                    
                }
                
                
            }.tag(1)
 
                ZStack{
                Color.orange
                
                
                VStack{
                    
                    
                    ZStack{
                        Circle()
                            .padding(50.0)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .padding(50)
                        Image("chasse")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        VStack{
                            Spacer()
                            Text("Découvre ta destination à travers une chasse au trésor")
                                .multilineTextAlignment(.center)
                                .frame (width: 163, height: 98, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding(80.0)
                            
                        }
                    }
                    
                    NavigationLink(
                        destination: SignUpView(),
                        label: {
                            LoginButton()
                        })
                    
                        .padding(35.0)
                }.tag(2)
                
                
                
                
                
                
            }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        }
    }
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}




struct Tag1: View {
    var body: some View{
        ZStack{
            Color.red
            Text("boris")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Image(systemName: "sun.max")
            
            
        }
        
    }
}

struct LoginButton: View{
    var body: some View{
        Text("C'est parti!")
            .font(.headline)
            .foregroundColor(.purple)
            .padding()
            .frame(width: 252, height: 54, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color.yellow)
            .cornerRadius(53)
    }
}










