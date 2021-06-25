//
//  ProfileView.swift
//  KiYou
//
//  Created by David Munive on 17/03/2021.
//

import SwiftUI

struct ProfileView: View {
    
//    @StateObject var settings = GameSettings()
    
    @State private var name: String = "John"
    @State private var age: Int = 10
    //    image Picker varibable and image variables
    @State private var image: Image?
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
//     variables
    @State private var artHobby = false
    @State private var filmsHobby = false
    @State private var sportsHobby = false
    @State private var biochemistryHobby = false
    @State private var musicHobby = false
    @State private var readingHobby = false
    @State private var boardgamesHobby = false
    @State private var cookingHobby = false
    @State private var campingHobby = false
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    @State var showPointsOrHunts: Bool = false
    @State var changeName: Bool = false
    @State var changeAge: Bool = false
    
    var body: some View {

            VStack(alignment: .center, spacing: 10.0) {
//            Text("Profil")
//                .font(.title)
//                .padding()
//               Text("\(settings.score)")
                
            ZStack {
                Ellipse()
                    .frame(width: 150, height: 150, alignment: .center)
                    .foregroundColor(Color("Jaune"))
//                
                if image != nil {
                    image?
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .scaledToFit()
                } else {
                    Image(systemName: "camera")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("Violet"))
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }
            }
            .onTapGesture {
                self.showingImagePicker = true
            }
            HStack {
                Text("Salut \(name) !")
                    .bold()
                    .foregroundColor(Color("Jaune"))
                    .font(.title)
                EditButton(editButton: $changeName)
            }
            if changeName == true {
                TextField("Ton nom", text: $name)
                    .multilineTextAlignment(.center)
            }
            //
            HStack {
                Text("J'ai \(age) ans")
                    .foregroundColor(Color("Violet"))
                    .font(.title3)
                EditButton(editButton: $changeAge)
            }
            if changeAge == true {
                TextField("Ton âge", value: $age, formatter: formatter)
                    .multilineTextAlignment(.center)
                
            }
            VStack {
                HStack {
                    Button {
                        self.showPointsOrHunts = false
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .frame(width: 150, height: 30, alignment: .center)
                                .foregroundColor(Color("Violet"))
                            Text("Mes points")
                                .bold()
                                .foregroundColor(Color("Jaune"))
                                .font(.system(size: 12))
                            
                        }
                    }
                    Button {
                        self.showPointsOrHunts = true
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .frame(width: 150, height: 30, alignment: .center)
                                .foregroundColor(Color("Violet"))
                            Text("Mes chasses effetuées")
                                .bold()
                                .foregroundColor(Color("Jaune"))
                                .font(.system(size: 12))
                        }                    }
                }
                if showPointsOrHunts == false {
                    HStack {
                        Image("pointimg")
                            .resizable()
                            .frame(width: 40, height: 40, alignment: .center)
                        Text("10 points")
                            .bold()
                            .font(.title)
                            .foregroundColor(Color("Jaune"))
                    }
                } else {
                    HStack {
                        Image("bus")
                            .resizable()
                            .frame(width: 40, height: 40, alignment: .center)
                        Text("Chasse aux tresors Louvre")
                    }
                }
            }
                Spacer()
            HobbiesView()
                Spacer()
        } .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage)
        }
        
        
    }
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
}
struct EditButton : View {
    @Binding var editButton: Bool 
    
    var body: some View {
        Button(action: {
            self.editButton.toggle()
        }, label: {
            Image(systemName: "pencil")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("Violet"))
                .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        })
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
