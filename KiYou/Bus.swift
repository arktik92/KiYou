//
//  Bus.swift
//  KiYou
//
//  Created by Esteban Semellier on 18/03/2021.
//

import SwiftUI
struct Bus1: View {
    //    var posX: CGFloat
    //    var posY: CGFloat
    var body: some View {
        Image("bus2")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(0.0)
            .frame(width: 190, height: 190, alignment: .center)
        //            .offset(x: posX, y: posY)
    }
}

struct Bus2: View {
    //    var posX: CGFloat
    //    var posY: CGFloat
    var body: some View {
        Image("bus")
            .resizable()
            .aspectRatio(contentMode:  .fit)
            .frame(width: 190, height: 190, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        //            .offset(x: posX, y: posY)
    }
}
