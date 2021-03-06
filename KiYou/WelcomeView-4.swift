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
            
            ZStack {
                Color.orange
                LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                TabView{
                    
                    FirstwelcomeView()
                    
                    
                    
                    SecondwelcomeView()
                    
                    
                    
                    
                    
                    ThirdwelcomeView()
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            }
        }
    }
}


struct welcomeView_Previews: PreviewProvider {
    static var previews: some View {
             WelcomeView()
    }
}









struct LoginButton: View{
    var body: some View{
        Text("C'est parti!")
            .font(.headline)
            .foregroundColor(Color("Violet"))
            .padding()
            .frame(width: 252, height: 54, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color("Jaune"))
            .cornerRadius(53)
            .shadow(color: Color("Violet"), radius: 40, x: 0, y: 0)
    }
}











struct FirstwelcomeView: View {
    var body: some View {
        ZStack{
            
            
            
            VStack{
                
                
                ZStack{
                    Circle()
                        .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    
                    Image("takeBus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                Text("Je monte dans le bus magique")
                    .bold()
                    .font(.title3)
                    .foregroundColor(Color("Violet"))
                    .multilineTextAlignment(.center)
                    .frame (width: 163, height: 98, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(40.0)
                
                
                
                
                
                    
                    .padding(35.0)
            }
            
        }
    }
}


struct SecondwelcomeView: View {
    var body: some View {
        ZStack{
            
            
            
            VStack{
                
                
                ZStack{
                    Circle()
                        .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    
                    Image("mini")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                Text("Je d??couvre des activit??s")
                    .bold()
                    .font(.title3)
                    .foregroundColor(Color("Violet"))
                    .multilineTextAlignment(.center)
                    .frame (width: 163, height: 98, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(40.0)
                
                
                
                
                
                    
              .padding(35.0)
            }
            
            
        }
    }
}

struct ThirdwelcomeView: View {
    var body: some View {
        ZStack{
            
            
            
            VStack{
                
                
                ZStack{
                    Circle()
                        .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    
                    Image("chasse")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                Text("Je participe ?? la chasse aux tr??sors en groupe")
                    .bold()
                    .font(.title3)
                    .foregroundColor(Color("Violet"))
                    .multilineTextAlignment(.center)
                    .frame (width: 163, height: 98, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(0.0)
                
                
                
                
                NavigationLink(
                    destination: SignUpView(),
                    label: {
                        LoginButton()
                    })
                    
                    .padding(35.0)
            }
            
            
            
            
            
            
        }
    }
}
