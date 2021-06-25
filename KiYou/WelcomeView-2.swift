//
//  WelcomeView.swift
//  KiYou
//
//  Created by David Munive on 17/03/2021.
//

import SwiftUI



// la navigation est faite il manque les images,les,font  les ,un logo,

struct WelcomeView: View{
    
    @State var index = 0
    
    
    var body: some View {
        
        
        
      
            
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



struct WelcomeView_Previews: PreviewProvider {
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
    }
}

struct FirstwelcomeView: View {
    var body: some View {
        ZStack{
            
            VStack{
                ZStack{
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 360, height: 360, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Image("takeBus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                Text("Embarque dans un bus magique et découvre un lieu à travers une chasse aux trésors")
                    .foregroundColor(Color("Violet"))
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .frame (width: 250, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(40)
                
            }
            
        }
    }
}


struct SecondwelcomeView: View {
    var body: some View {
        ZStack {
    
            VStack{
              
                ZStack{
                    Circle()
                        .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .padding()
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
            
            
        }
    }
}

struct ThirdwelcomeView: View {
    var body: some View {
        ZStack{
            
            
            
            VStack{
                
                
                ZStack{
                    Circle()
                        .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    
                    Image("chasse")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                Text("Découvre ta destination à travers une chasse au trésor")
                    .multilineTextAlignment(.center)
                    .frame (width: 163, height: 98, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(40.0)
                
                
                
                
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
