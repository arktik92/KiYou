//
//  Popup.swift
//  KiYou
//
//  Created by Esteban Semellier on 18/03/2021.
//

import SwiftUI

struct PopUp2: View {
    var description: String
    var title: String
    var nbUser: Int
    var nbPoints: Int
    @State var selectedBus = 0
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.white)
                .frame(width: 315, height: 235, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(RoundedRectangle(cornerRadius: 25.0)
                                .stroke(Color("Violet"),lineWidth: 2.0))
                
            VStack {
                Text(title)
                    .bold()
                    .font(.title3)
                    .foregroundColor(Color("Violet"))
                    .frame(width: 280, height: 50)
                    .multilineTextAlignment(.center)
                Text(description)
                    .font(.system(size: 12))
                    .foregroundColor(Color("Violet"))
                    .multilineTextAlignment(.center)
                    .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                HStack{
                    
                    VStack{
                        Text("Nb de Joueurs max.")
                            .font(.system(size: 12))
                            .foregroundColor(Color("Violet"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                        Text("\(nbUser)")
                            .bold()
                            .font(.title2)
                            .foregroundColor(Color("Jaune"))
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    
                    VStack{
                        Text("Pts à gagner")
                            .font(.system(size: 12))
                            .foregroundColor(Color("Violet"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                        Text("\(nbPoints)")
                            .bold()
                            .font(.title2)
                            .foregroundColor(Color("Jaune"))
                            .multilineTextAlignment(.center)
                    }
                }
                .frame(width: 270, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(Color("Jaune"))
                
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.yellow)
                        .frame(width: 80, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    if title == testMainGame1.name {
                        NavigationLink(
                            destination: BusView(myMinibus: busLouvre),
                            label: {
                                Text("Let's Go")
                                    .foregroundColor(Color("Violet"))
                            })
                    }else if title == testMainGame2.name {
                        NavigationLink(
                            destination: BusViewEiffelTower(myMinibus: busTourEiffel),
                            label: {
                                Text("Let's Go")
                                    .foregroundColor(Color("Violet"))
                            })
                    }else{
                        NavigationLink(
                            destination: BusViewMontmartre(myMinibus: busMontmartre),
                            label: {
                                Text("Let's Go")
                                    .foregroundColor(Color("Violet"))
                            })
                    }
                }
            
            }
            
        }
    }
}
