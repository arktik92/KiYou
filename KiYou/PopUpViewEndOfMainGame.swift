//
//  PopUpViewEndOfMainGame.swift
//  KiYou
//
//  Created by Laura LONG on 22/03/2021.
//

import SwiftUI

struct PopUpViewEndOfMainGame: View {
    
    @State var validateButtonEOMG = false
    var body: some View {
        

            
        ZStack{
            Color.white
                .opacity(0.6)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        ZStack{
            ZStack{
                RoundedRectangle(cornerRadius: 25)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 25.0)
                            .stroke(Color("Violet"),lineWidth: 2.0)
            )
            
            .frame(width:300, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Image("confettiBG3")
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .frame(width:300, height: 400, alignment: .top)
  
            VStack{
                Image(systemName: "xmark.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("Violet"))
                Spacer()
                Text("Bravo! ")
                    .font(.title)
                    .foregroundColor(Color("Violet"))
                    .bold()
                Spacer()
                Text("Ta chasse est terminé ! ")
                    .foregroundColor(Color("Violet"))
                Image("key")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                
                NavigationLink(
                    destination: HomeView(home: testMainGame1),
                    
                    label: {
                        HStack{
                                Image(systemName: "arrow.backward")
                                                .foregroundColor(Color("Violet"))
                                                .font(.title3)
                                            
                                Text("Revenir au bus")
                                            .font(.title3)
                                            .foregroundColor(Color("Violet"))
                                            .bold()
                            }
                    }
                )}   .frame(width:280, height: 380, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        } 
    }
}

}
}




struct PopUpViewEndOfMainGame_Previews: PreviewProvider {
    static var previews: some View {
        PopUpViewEndOfMainGame()
    }
}
