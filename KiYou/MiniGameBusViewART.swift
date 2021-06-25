
//
//  MiniGameBusView.swift
//  KiYou
//
//  Created by David Munive on 17/03/2021.
//

import SwiftUI

struct MiniGameBusViewART: View {
    @State var showPopWin = false
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
    @State var moveCloud = false
    var oneMiniGame: MiniGameBus
    
    
    var body: some View {
        
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Cloud()
                    .offset ( x: moveCloud ? 400 :  0 )
                    .animation(Animation.easeInOut(duration: 3).speed(0.18).repeatForever(autoreverses : true).delay(3))
                
                Cloud()
                    .offset ( x: moveCloud ? 400 : 0 )
                    .animation(Animation.linear   (duration: 3).speed(0.15).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.1))
                Cloud()
                    .offset ( x: moveCloud ? 0 :  400 )
                    .animation(Animation.easeInOut(duration: 3).speed(0.05).repeatForever(autoreverses : true).delay(2))
                
                Cloud()
                    .offset ( x: moveCloud ? 400 : 0 )
                    .animation(Animation.linear   (duration: 3).speed(0.10).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.1))
            }
            
            VStack {
                HStack {
                    ZStack{
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: 220, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .opacity(0.6)
                        HStack{
                            Image("art")
                                .resizable()
                                .aspectRatio(contentMode:.fit)
                                .frame(width: 60, height: 60, alignment: .center)
                            Text(oneMiniGame.name)
                                .bold()
                                .font(.title2)
                                .foregroundColor(Color("Violet"))
                        }
                        //                }.padding(.vertical, -10.0)
                    }
                }
                
                VStack{
                    Text(oneMiniGame.description)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Image("draw")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .opacity(0.8)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 300, height: 200, alignment: .center)
                }
                
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .opacity(0.6)
                            .padding(20)
                            .frame(width: 390, height: 420, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        VStack {
                            
                            Text("Fais un dessin en incluant ces 3 formes")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color("Violet"))
                                .multilineTextAlignment(.center)
                                .frame(width: 340, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            HStack {
                                Image(systemName: "pyramid")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("Violet"))
                                    .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Image(systemName: "capsule")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("Violet"))
                                    .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Image(systemName: "rhombus")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("Violet"))
                                    .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            
                            Text("Imagine ce que cela pourrait être...")
                                .font(.system(size:15))
                                .foregroundColor(Color("Violet"))
                                .frame(width: 310,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("Pour t'aider : Dessine ce qui te vient en tête")
                                .font(.system(size:15))
                                .foregroundColor(Color("Violet"))
                                .frame(width: 310,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("A toi de jouer !")
                                .fontWeight(.bold)
                                .font(.system(size:20))
                                .foregroundColor(Color("Jaune"))
                                .padding()
                                .frame(width: 340, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
          
                            Button (action: {self.showPopWin.toggle()}, label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(Color("Jaune"))
                                        .frame(width: 230, height: 50, alignment: .center)
                                    Spacer()
                                    HStack{
                                        Text("Envoie-nous ta création")
                                            .foregroundColor(Color("Violet"))
                                        ZStack {
                                            Button(action: {
                                                self.isShowPhotoLibrary = true
                                            }) {
                                                
                                                Image(systemName: "camera.circle.fill")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .foregroundColor(Color("Violet"))
                                                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            }
                                            
                                        }
                                    }
                                }
                            })
                            
                        }

                      
                           
                    }
                    Spacer()
                        .frame( height: 15)
                }
            }
            
            if showPopWin == true {
                PopUpEndOfMiniGameBus(closePopUp: $showPopWin)
            }
            
            
        }.onAppear{
            moveCloud = true
            
        }
        
    }
}

struct MiniGameBusViewART_Previews: PreviewProvider {
    static var previews: some View {
        MiniGameBusViewART(oneMiniGame: drawing)
    }
}


//
//        struct ImagePicker: UIViewControllerRepresentable {
//
//            var sourceType: UIImagePickerController.SourceType = .photoLibrary
//
//            func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
//
//                let imagePicker = UIImagePickerController()
//                imagePicker.allowsEditing = false
//                imagePicker.sourceType = sourceType
//
//                return imagePicker
//            }
//
//            func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {
//            }


