//
//  Decor.swift
//  KiYou
//
//  Created by Esteban Semellier on 18/03/2021.
//

import SwiftUI
struct Trees: View {
    //    var posX: CGFloat
    //    var posY: CGFloat
    var body: some View {
        Image("tree")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        //            .position(x: posX, y: posY)
        
    }
}





struct Cloud: View {
//    var posX: CGFloat
  
    var body: some View {
        Image("cloud")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        
    }
    
}
