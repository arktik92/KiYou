//
//  Model.swift
//  KiYou
//
import Foundation
import SwiftUI
import MapKit

struct MySettings : Identifiable {
    var id = UUID()
    var name: String
    var age: Int
    var hobbies: [Hobby]
    var password: String
    var email: String
    var score: Int = 0
    var image: String
    var city: String
    var completedStories: [String] = []
}

struct User: Identifiable {
    var id = UUID()
    var pseudo: String
    var hobbies: [Hobby]
    var image: String
}

struct Hobby: Identifiable {
    var id = UUID()
    var image: String
    var name: String
}

struct MainGame: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var points: Int
    var numberOfUsers: Int
    var startDate: String
    var expectedMinutesToFinish : Int
    var keys: Int = 0
    var miniGames: [MiniGameHunt]
    var latitude: Double
    var longitude: Double
    var result: Bool = false
}

struct MiniGameBus: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var pointsToWin: Int
    var expectedMinutesToFinish: Int
    var result: Bool = false
    var answer: String
}

struct MiniGameHunt: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var result: Bool = false
    var answer: String
}

struct Bus: Identifiable {
    var id = UUID()
    var name: String
    var timer: String
    var users: [User]
    var miniGamesList: [MiniGameBus]
}

struct Chat: Identifiable {
    var id = UUID()
    var message: Message
}

struct Message : Identifiable{
    var id = UUID()
    var sender: User
    var content: String
}

struct Key : Identifiable {
    var id = UUID()
    var latitude: Double
    var longitude: Double
    var image: String
    //Ajout d'une variable
    var game : MiniGameHunt
    var coordinate : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)}
}

struct ChatBot : Identifiable {
    var id = UUID()
    var date: String
    var message: String
}



class GameSettings: ObservableObject {
    @Published var score = 0
}

struct ValidationButton: View {
   
    @Binding var validateQV1 : Bool
    var titleButtonV : String
    var widthButtonV : CGFloat
    var heightButtonV : CGFloat

    var body: some View {
        Button(action:{
            
            self.validateQV1.toggle()
        }
       
        , label: {
            
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(Color("Jaune"))
                    .frame(width: widthButtonV, height: heightButtonV, alignment: .center)
                Text(titleButtonV)
                    .foregroundColor(Color("Violet"))
            }
        })
        
    } 
}
//
//struct Activityview: View {
//    @State var validateActivity = false
//    var imageName:String
//    var body: some View {
//
//        Button(action:
//                {self.validateActivity.toggle()
//        }
//        ,label:{
//
//        ZStack{
//            Ellipse()
//                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                .foregroundColor(.white)
//            Image(imageName)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//        }
//        })
//        }
//}
