//
//  PopUp-StartMainGame.swift
//  KiYou
//
//  Created by Laura LONG on 22/03/2021.
//

import SwiftUI


struct PopUp_StartMainGame: View {
    
    @State var showPopUpMainGame = false
    @State private var fontSize: CGFloat = 60

    
    var body: some View {
        NavigationView{
        ZStack{
            Color.white
                .opacity(0.6)
   ZStack{
                
                RoundedRectangle(cornerRadius: 25)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 25.0)
                            .stroke(Color("Violet"),lineWidth: 2.0)
            )
            
            .frame(width:300, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
  
            VStack{
        
                Text("Time UP ! ")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(Color("Violet"))
                    .padding(.vertical,50)
                Spacer()
                HStack{
                    Image("timerimg")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 90, height: 90)
                Text("00:00 ")
                    
                    .bold()
                    .font(.system(size: 60))
                    .foregroundColor(Color("Jaune"))
                }
                 Spacer()
                    
          
                
                NavigationLink(
                    destination: MainGameView(oneMainGame: testMainGame1),
                    
                    label: {
                        ZStack{
                                
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color("Jaune"))
                                    .frame(width:200, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding()
                                
                            NavigationLink(
                                destination: MainGameView(oneMainGame: testMainGame1),
                                label: {
                                    Text("Démarrer la chasse")
                                                    .font(.title3)
                                                    .foregroundColor(Color("Violet"))
                                                    .bold()
                                })
                           
                            }
                    }
                )
            }
    
              Spacer()
                    }
                }   .frame(width:280, height: 380, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
        .navigationBarBackButtonHidden(true)
        }
        
        }
  
}

    
                



struct PopUp_StartMainGame_Previews: PreviewProvider {
    static var previews: some View {
        PopUp_StartMainGame()
    }
}


