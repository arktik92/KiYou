//
//  PopUp-BusView.swift
//  KiYou
//
//  Created by Laura LONG on 18/03/2021.
//

import SwiftUI

struct PopUp_BusView: View {
    
    @Binding var show  : Bool
    
    var body: some View {
        
        ZStack {
            Color(.white)
                .opacity(0.6)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                        .frame(width: 350, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(RoundedRectangle(cornerRadius: 25.0)
                                        .stroke(Color("Violet"),lineWidth: 2.0)
                        )
                    
                    VStack {
                        VStack (spacing: 40){

                            Text("Découvre des activités à faire avant le début de la chasse aux trésors")
                                .bold()
                                .foregroundColor(Color("Violet"))
                                .multilineTextAlignment(.center)
                                .frame(width: 300,alignment: .top)
                            ActivityStep(number: "1", description: " Je sélectionne une activité ")
                            ActivityStep(number: "2", description: "Je découvre une activité ")
                            ActivityStep(number: "3", description: "Je partage et gagne des points")
                        }
                        ValidationButton(validateQV1: $show, titleButtonV: "A toi de jouer !", widthButtonV: 140, heightButtonV: 40)
                        
                            .padding(20)
                        
                    }
                    
                    
                }
            }
        }
        
    }
    
}


struct PopUp_BusView_Previews: PreviewProvider {
    static var previews: some View {
        PopUp_BusView(show : .constant(false))
    }
}


struct ActivityStep: View {
    var number : String
    var description : String
    var body: some View {
        HStack {
            Text(number)
                .font(.system(size: 60))
                .bold()
                .foregroundColor(Color("Jaune"))
            Text(description)
                .font(.body)
                .foregroundColor(Color("Violet"))
        } .frame(width: 300, alignment: .leading)
    }
}


