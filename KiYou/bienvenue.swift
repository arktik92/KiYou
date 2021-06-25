//
//  bienvenue.swift
//  KiYou
//
//  Created by Esteban Semellier on 24/03/2021.
//

import SwiftUI

struct bienvenue : View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.orange
                                LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Text("bienvenue sur KiYou ")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                    
                        NavigationLink(
                            destination: HomeView(home: testMainGame1),label: {
                                ZStack {
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .frame(width: 102, height: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.orange)
                                        .frame(width: 100, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Text("commencer")
                                    .foregroundColor(.white)
                                }
                                })
                    
                }
            }
        }
    }
}


struct bienvenue_Previews: PreviewProvider {
    static var previews: some View {
        bienvenue()
    }
}
