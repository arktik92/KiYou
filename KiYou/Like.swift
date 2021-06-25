//
//  Like.swift
//  KiYou
//
//  Created by Esteban Semellier on 19/03/2021.
//

import SwiftUI
struct Like: View {
    @State private var isLiked = false
   
    var body: some View{
      
        
        VStack {
            HeartButton(isLiked: $isLiked)
            
        }
    }
}

struct HeartButton: View {
    @Binding var isLiked: Bool
    private let animationDuration: Double = 0.1
    private var animationScale: CGFloat {
        isLiked ? 0.7 : 1.3
    }
    
    @State private var animate = false
    var body: some View {
        Button(action: {
            self.animate = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + animationDuration, execute:{
             self.animate = false
                self.isLiked.toggle()
            })
            
        }, label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .foregroundColor(isLiked ? .red : .gray)
        })
        .scaleEffect(animate ? animationScale : 1)
        .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/(duration: animationDuration))
    }
    
}


struct LiekeView_Previews: PreviewProvider {
    static var previews: some View {
    Like()
    }
}
