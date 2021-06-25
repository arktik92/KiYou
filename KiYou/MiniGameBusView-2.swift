
//
//  MiniGameBusView.swift
//  KiYou
//
//  Created by David Munive on 17/03/2021.
//

import SwiftUI

struct MiniGameBusView: View {
    
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
    @State var moveCloud = false
    var oneMiniGame: MiniGameBus
    
    
    var body: some View {
        
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            Cloud(posY: 200)
                .offset ( x: moveCloud ? 400 :  0 )
                .animation(Animation.easeInOut(duration: 3).speed(0.22).repeatForever(autoreverses : true).delay(4))
            
            Cloud(posY: 250)
                .offset ( x: moveCloud ? 400 : 0 )
                .animation(Animation.linear   (duration: 3).speed(0.09).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(2))
            Cloud(posY: 300)
                .offset ( x: moveCloud ? 50 :  400 )
                .animation(Animation.easeInOut(duration: 3).speed(0.15).repeatForever(autoreverses : true).delay(2))
            
            Cloud(posY: 500)
                .offset ( x: moveCloud ? 400 : 0 )
                .animation(Animation.linear   (duration: 3).speed(0.10).repeatForever(autoreverses : true))  .animation(Animation.easeInOut(duration: 3).speed(0.17))
            
            
            VStack {
                ZStack {
                    Color.white
                        .opacity(0.2)
                    VStack {
                        HStack {
                   
                    Image("art")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
           
                    Text(oneMiniGame.name)
                    
                }.padding(.top)
    
                    Text(oneMiniGame.description)
                        .font(.headline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                        .padding(20.0)
                    }
                }
                    Image("draw")
                        .resizable()
                        .frame(width: 370, height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .opacity(0.9)
                        .padding(.bottom, 30.0)
                
                ZStack {
                    Color.white                .opacity(0.4)
                VStack {
                    Text("Fais un dessin en incluant ces 3 formes")

                    HStack {
                        Image(systemName: "pyramid")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Image(systemName: "capsule")
                            .resizable()
                            .frame(width: 100, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Image(systemName: "rhombus")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    }
                  
                    VStack {
                    Text("Imagine ce que cela pourrait être...")
                    Text("Pour t'aider : Dessine ce qui te vient en tête")
                    
                    Text("A toi de jouer !")
            
                    Text("Envoie-nous ton dessin et gagne 10 points")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                    }
                }
                
                        ZStack {
                        
                        Button(action: {
                            self.isShowPhotoLibrary = true
                        }) {
                            
                            Image(systemName: "camera.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.black)
                        }

                    }
                
                
            }.onAppear{
                moveCloud = true
            }
        }
    }
    }
    struct MiniGameBusView_Previews: PreviewProvider {
        static var previews: some View {
            MiniGameBusView(oneMiniGame: drawing)
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


