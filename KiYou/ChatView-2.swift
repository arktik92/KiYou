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
    @State private var mySentMessages: [String] = ["Salut", "comment ça va ?"]
    
    var body: some View {
        
        ZStack {
            Color.white
                .opacity(0.8)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    
            VStack {
            
                ZStack {
                    RoundedRectangle(cornerRadius: 15.0)
                        .foregroundColor(Color("Jaune"))
                        .frame(width:380 , height: 40, alignment: .center)
                    HStack{
                    Image(systemName: "bubble.left.and.bubble.right.fill")
                        .foregroundColor(Color("Violet"))
                        Text("Chat avec tes coéquipers")
                            .foregroundColor(Color("Violet"))
                            .bold()
                            .font(.title3)
                    }
                
                }
            
                VStack {
                    HStack {
                        
                        VStack {
                            
                            Text(message1.sender.pseudo)
                                .bold()
                                .foregroundColor(Color("Violet"))
                            Text(message1.content)
                                .padding(10)
                                .foregroundColor(Color("Violet"))
                                .background(Color("Jaune"))
                                .cornerRadius(10)
                        }
                        .padding()
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        VStack {
                            Text("Moi")
                                .bold()
                                .foregroundColor(Color("Violet"))
                            ForEach(mySentMessages, id: \.self){  item in
                                Text("\(item)")
                                    .padding(10)
                                    .foregroundColor(Color.white)
                                    .background(Color("Violet"))
                                    .cornerRadius(10)
                            }
                        }
                        .padding()
                    }
                    
                }
                Spacer()
                HStack {
                                                Button(action: {
                                                          //Ajouter photo
                                                }) {
                                                    Image(systemName: "plus")
                                                }
                    TextField("Message", text: $textMessage)
                        .frame(width: UIScreen.main.bounds.width - 80)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    // button envoyer message
                    Button(action: {
                        mySentMessages.append(textMessage)
                        //                            sentMessage = textMessage
                        self.textMessage = ""
                    }) {
                        Image(systemName: "paperplane")
                    }.disabled(textMessage.count == 0)
                }
                .padding([.leading, .trailing], 29)
                .padding([.top, .bottom], 12)
                .background(Color("Jaune"))
            }
        }
    }
}
struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
