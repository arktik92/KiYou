//
//  SignUpEmailAndPasswordView.swift
//  KiYou
//
//  Created by David Munive on 17/03/2021.
//

// n'oublie pas la navigation vers quelle page envoyer celle la
import SwiftUI


struct SignUpEmailAndPasswordView: View {
    
    let storedUsermail = "boris"
    let pasword = "ajbjefef"
    
    var connexiion: MySettings
    
    @State var  mail: String = ""
    @State var password: String = ""
    
    @State var authentificationFail: Bool = false
    @State var authentificationSucceed: Bool = true
    
    var body: some View {
        ZStack{
           
            Color.white
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
            Salut()
                
            .padding(40)
            UsermailTextField(mail: $mail)
            PassewordSecureField(password: $password)
            Spacer()
                
                
                if authentificationFail {
                 Text("Les informations ne sont pas correct. essaie encore")
                    .foregroundColor(.red)
                    
                    
                }
                
                NavigationLink(
                    destination: HomeView(
                        home: testMainGame1),
                    label: {
                        loginButtoncontent()
                        
                    })
                
                
            }
//            if authentificationSucceed{
//                Text("félicitation bienvenue dans ki you")
//                
//            
//            }
            
            }.navigationBarBackButtonHidden(true)
        }
                
    }


struct SignUpEmailAndPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpEmailAndPasswordView(connexiion: testSetting1)
        
    }
}

struct Salut : View {
    var body: some View{
        
        VStack{
            
        Text("Salut \(testSetting1.name)!")
            .bold()
            .foregroundColor(Color("Jaune"))
            .multilineTextAlignment(.center)
            .frame(width: 350, height: 54, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            
        Text("L'aventure KI YOU va bientôt commencer!")
            .foregroundColor(Color("Violet"))
            .multilineTextAlignment(.center)
            .frame(width: 350, height: 54, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
            
        Text("Renseigne les dernières information pour commencer ton aventure")
        .foregroundColor(Color("Violet"))
        .font(.subheadline)
        .multilineTextAlignment(.center)
        .frame(width: 350, height: 54, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
}


struct loginButtoncontent: View{
    var body: some View{
        
    
            Text("Commence ton aventure !")
                .font(.headline)
                .foregroundColor(Color("Violet"))
                .padding()
                .frame(width: 252, height: 54, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color("Jaune"))
                .cornerRadius(53)
       
        
        
    }
    
}


struct UsermailTextField: View {
    
    @Binding var mail: String
    
    var body: some View{
        ZStack{
            TextField("Ton Email", text: $mail)
                .foregroundColor(Color("Violet"))
                .font(.title2)
            .padding()
            .frame(width: 350, height: 54, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(RoundedRectangle(cornerRadius: 25.0)
                            .stroke(Color("Jaune"),lineWidth: 1.0))
            .padding(.bottom, 20.0)
        }
        
        
    }
}



struct PassewordSecureField: View {
    
    @Binding var password: String
    
    var body: some View{
        SecureField("Mot de passe", text: $password)
            .foregroundColor(Color("Violet"))
            .font(.title2)
            .padding()
            .frame(width: 350, height: 54, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(RoundedRectangle(cornerRadius: 25.0)
                            .stroke(Color("Jaune"),lineWidth: 1.0))
            .padding(.bottom, 20.0)
        
        
        
        
    }
}

