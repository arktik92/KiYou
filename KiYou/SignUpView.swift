//
//  SignUpView.swift
//  KiYou
//
//  Created by David Munive on 17/03/2021.
//
//Sign Up View utilise Hobbies, 
import SwiftUI


struct SignUpView: View {
    @State private var name: String = ""
    @State private var age: Int = 0
    @State private var validationButton1 = false
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    var body: some View {
     
     
        VStack(alignment: .center, spacing: 10.0) {
            Text("Bienvenue sur KIYOU")
                .bold()
                .foregroundColor(Color("Jaune"))
                .font(.largeTitle)
            Spacer()
            
            Text("Comment t'appelles-tu ?")
                .foregroundColor(Color("Violet"))
                .font(.title2)
            
            TextField("Écris ton nom", text: $name)
                .padding()
                .foregroundColor(Color("Violet"))
                .multilineTextAlignment(.center)
                .font(.title2)
                .frame(width: 350, height : 38)
                .background(RoundedRectangle(cornerRadius: 20.0)
                                .stroke(Color("Jaune"), lineWidth: 1)
                                .background(Color.white)
                )
                         
            Text("Quel âge as-tu ?")
                .foregroundColor(Color("Violet"))
                .font(.title2)
            
            TextField("Ton âge", value: $age, formatter: formatter)
                .padding()
                .foregroundColor(Color("Violet"))
                .multilineTextAlignment(.center)
                .font(.body)
                .frame(width: 350, height : 38)
                .background(RoundedRectangle(cornerRadius: 20.0)
                                .stroke(Color("Jaune"), lineWidth: 1)
                                .background(Color.white)
                )
                .multilineTextAlignment(.center)
            Spacer()
            HobbiesView()
            
            NavigationLink(
                destination: SignUpEmailAndPasswordView(connexiion: testSetting1),
                label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("Jaune"))
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("Valider")
                            .foregroundColor(Color("Violet"))
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
            })
        }
    }
}

struct HobbyButton : View {
    @State var buttonTap: Bool = false
    @Binding var hobbyVariable: Bool
    
    var hobbyName: String
    var hobbyimage: String
    
    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    self.buttonTap.toggle()
                    self.hobbyVariable.toggle()
                    playSound(sound: "Buttonlike", type: "mp3")
                }) {
                    ZStack {
                        Circle()
                            .fill(buttonTap ?  Color(.yellow) : Color.gray)
                            .frame(width: 80, height: 60, alignment: .center)
                        Image(hobbyimage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40, alignment: .center)
                    }
                }
                .saturation(buttonTap ? 1 : 0)
                Text(hobbyName)
                    .foregroundColor(.black)
            }
        }
    }
}

struct HobbiesView : View {
    @State private var artHobby = false
    @State private var filmsHobby = false
    @State private var sportsHobby = false
    @State private var biochemistryHobby = false
    @State private var musicHobby = false
    @State private var readingHobby = false
    @State private var boardgamesHobby = false
    @State private var cookingHobby = false
    @State private var campingHobby = false
    
    var body: some View {
  

        VStack {
            
            Text("J'aime")
                .foregroundColor(Color("Violet"))
                .font(.title2)
            
            HStack {
                Spacer()
                HobbyButton(hobbyVariable: $artHobby, hobbyName: "Art", hobbyimage: "art")
                Spacer()
                HobbyButton(hobbyVariable: $musicHobby, hobbyName: "Musique", hobbyimage: "musique")
                Spacer()
                HobbyButton(hobbyVariable: $cookingHobby, hobbyName: "Cuisine", hobbyimage: "food")
                Spacer()
            }
            .padding()
            HStack {
                Spacer()
                HobbyButton(hobbyVariable: $sportsHobby, hobbyName: "Sports", hobbyimage: "sport")
                Spacer()
                HobbyButton(hobbyVariable: $readingHobby, hobbyName: "Lecture", hobbyimage: "livre")
                Spacer()
                HobbyButton(hobbyVariable: $biochemistryHobby, hobbyName: "Expériences", hobbyimage: "biochemistry")
                Spacer()
            }
            HStack {
                Spacer()
                HobbyButton(hobbyVariable: $boardgamesHobby, hobbyName: "Jeux société", hobbyimage: "boardgamepng")
                Spacer()
                HobbyButton(hobbyVariable: $campingHobby, hobbyName: "Camping", hobbyimage: "camping")
                Spacer()
                HobbyButton(hobbyVariable: $filmsHobby, hobbyName: "Cinéma", hobbyimage: "clapper")
                Spacer()
            }
            }.navigationBarBackButtonHidden(true)
            
    }
}



struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
