//
//  ChatView.swift
//  KiYou
//
//  Created by David Munive on 19/03/2021.
//

import SwiftUI


struct ChatView : View {
    @State private var textMessage: String = ""
    @State private var sentMessage: String = "Hello"
    var body: some View {
            
            ZStack {
                    VStack {
                        VStack {
                            Text(message1.sender.pseudo)
                                .bold()
                            Text(message1.content)
                                .padding(10)
                                .foregroundColor(Color.white)
                                .background(Color.green)
                                .cornerRadius(10)
                            
                            Text(sentMessage)
                                        .padding(10)
                                        .foregroundColor(Color.white)
                                        .background(Color.blue)
                                        .cornerRadius(10)
                        }
                        Spacer()
                        HStack {
//                            Button(action: {
//                                      //Ajouter photo
//                            }) {
//                                Image(systemName: "plus")
//                            }
                        TextField("Message", text: $textMessage)
                                .frame(width: UIScreen.main.bounds.width - 80)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            // button envoyer message
                            Button(action: {
                            sentMessage = textMessage
                                self.textMessage = ""
                        }) {
                                Image(systemName: "paperplane")
                        }.disabled(textMessage.count == 0)
                    }
                    .padding([.leading, .trailing], 29)
                    .padding([.top, .bottom], 12)
                    .background(Color(red: 0.9, green: 0.9, blue: 0.9))
                }
            }
        }
}
struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
