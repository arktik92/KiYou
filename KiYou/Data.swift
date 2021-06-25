//
//  Data.swift
//  KiYou
//

import Foundation

//user
let user1 = User(pseudo: "Jhon", hobbies: hobbiesTable1, image: "user1")
let user2 = User(pseudo: "Lea", hobbies: hobbiesTable1, image: "user2")
let user3 = User(pseudo: "Boris", hobbies: hobbiesTable2, image: "user3")
let user4 = User(pseudo: "Elodie", hobbies: hobbiesTable2, image: "user4")
let userD = User(pseudo: "Driver", hobbies: hobbiesTable2, image: "driver")

let userList1 = [user1, user2, user3]
let userList2 = [user2, user3, user1, user4]
let userList3 = [user1, user3, user4]

// Les profils users "Settings Data"
let testSetting1 = MySettings(name: "John", age: 13, hobbies: hobbiesTable1, password: "JJ22ii", email: "john@testmail.com", score: 10, image: "johnavatar", city: "Paris O1", completedStories: testCompletedStories1)
let testSetting2 = MySettings(name: "Mélanie", age: 12, hobbies: hobbiesTable2, password: "HH33ee", email: "melanie@testmail.com", score: 20, image: "mélanieavatar", city: "Paris O1", completedStories: testCompletedStories2)
let testSetting3 = MySettings(name: "Maxime", age: 11, hobbies: hobbiesTable2, password: "MM44pp", email: "maxime@testmail.com", score: 5, image: "maximeavatar", city: "Paris O1", completedStories: testCompletedStories3)

let testTableSetting1 = [testSetting1,testSetting2]
let testTableSetting2 = [testSetting1,testSetting3]


// Hobbies
let hobbyArt = Hobby(image: "art", name: "Art")
let hobbySport = Hobby(image: "sport", name: "Sport")
let hobbyMusique = Hobby(image: "musique", name: "Musique")
let hobbyFood = Hobby(image: "food", name: "Cuisine")
let hobbyLecture = Hobby(image: "lecture", name: "Lecture")

let hobbiesTable1 = [hobbyArt,hobbyMusique,hobbySport]
let hobbiesTable2 = [hobbyMusique,hobbySport]

// Mini Games Bus
let drawing = MiniGameBus( name: "Dessiner" , description: "3 formes, 1 dessin\nImagine et dessine la suite" , pointsToWin: 10, expectedMinutesToFinish: 3, result: true, answer: "envoie la photo de tes dessins")
let bowling = MiniGameBus( name: "Jeu sportif" , description: "Fabrique ton jeu de bowling" , pointsToWin: 20, expectedMinutesToFinish: 2, result: true, answer: "je sais pas")
let music = MiniGameBus( name: "Musique" , description: "Ecoute et reproduis le même son" , pointsToWin: 10, expectedMinutesToFinish: 3, result: true, answer: "je sais pas")
let food = MiniGameBus(name: "Cuisine", description: "Potion Magique\nFabrique ta propre boisson", pointsToWin: 15, expectedMinutesToFinish: 15, result: true, answer: "je sais pas")
let readOrWrite = MiniGameBus(name: "Lire/Ecrire", description: "Avec ces 5 mots, raconte une histoire", pointsToWin: 30, expectedMinutesToFinish: 5, result: true, answer: "je sais pas")
let build = MiniGameBus(name: "Construire", description: "Avec ce que tu as chez toi", pointsToWin: 20, expectedMinutesToFinish: 40, answer: "je sais pas")
let experience = MiniGameBus(name: "Expérience", description: "Retourne une bouteille d'eau sans bouchon, sans que l'eau ne coule", pointsToWin: 15, expectedMinutesToFinish: 5, answer: "je sais pas")

let miniGameBusList = [drawing, bowling, music, food, readOrWrite, build, experience]


// Pour les Mini Jeux Chasse du Louvre
let testMiniGameHuntLouvre1 = MiniGameHunt(name:"Cherche et Trouve", description: "Envoie tes données GPS lorsque tu es devant la Joconde",  result: true, answer: ("48.86,2.33"))
let testMiniGameHuntLouvre2 = MiniGameHunt(name:"Quizz", description: "Rend toi à la salle préhistoire et recherche le nom de la période la plus ancienne", result: true, answer: ("Antiquité"))
let testMiniGameHuntLouvre3 = MiniGameHunt(name:"Quizz visuel", description: "Je suis une statue, en marbre d'origine greg. Rends dans Salle Antiquité et donne le nom exact de la Statue ", result: true, answer: ("La victoire de Samothrace"))
let testMiniGameHuntLouvre4 = MiniGameHunt(name:"Défi Photo", description: "Prends en photo un outil qui appartient à l'âge préhistorique)", result: true, answer: (""))

let testTableMiniGameHunt1 = [testMiniGameHuntLouvre1,testMiniGameHuntLouvre2]
let testTableMiniGameHunt2 = [testMiniGameHuntLouvre1,testMiniGameHuntLouvre2,testMiniGameHuntLouvre3,testMiniGameHuntLouvre4]
let testTableMiniGameHunt3 = [testMiniGameHuntLouvre1,testMiniGameHuntLouvre2,testMiniGameHuntLouvre3]

// Pour les Mini Jeux Chasse de la Tour Eiffel
let testMiniGameHuntTE1 = MiniGameHunt(name:"Cherche et Trouve", description: "Envoie tes données GPS lorsque tu es devant la Tour Eiffel", result: true, answer: ("48.85,2.29"))
let testMiniGameHuntTE2 = MiniGameHunt(name:"Quizz", description: "Rend toi à la Tour Eiffel et trouve sa date exacte de construction ", result: true, answer: ("28 janvier 1887"))
let testMiniGameHuntTE3 = MiniGameHunt(name:"Quizz visuel", description: "Comment le glacier entre le pillier est et le pilier sud ?  ", result: true, answer: ("Le Glacier Français"))
let testMiniGameHuntTE4 = MiniGameHunt(name:"Défi Photo", description: "Retrouve cette image et prends la en photo \(("photoenigme2" )) ", result: true, answer: ("photodelaTE"))

let testTableMiniGameHunt4 = [testMiniGameHuntTE1,testMiniGameHuntTE2]
let testTableMiniGameHunt5 = [testMiniGameHuntTE1,testMiniGameHuntTE2,testMiniGameHuntTE3,testMiniGameHuntTE4]
let testTableMiniGameHunt6 = [testMiniGameHuntTE1,testMiniGameHuntTE2,testMiniGameHuntTE3]

// Pour les Mini Jeux Chasse de Montmartre
let testMiniGameHuntMM1 = MiniGameHunt(name:"Cherche et Trouve", description: "Envoie tes données GPS lorsque tu es devant Montmartre", result: true, answer: ("48.89,2.34"))
let testMiniGameHuntMM2 = MiniGameHunt(name:"Quizz", description: "Compte le nombre de marche pour monter au Sacré Coeur ", result: true, answer: ("222 marches"))
let testMiniGameHuntMM3 = MiniGameHunt(name:"Quizz visuel", description: "Comptele nombre de chauveaux sur le carrousel de MontMatre ", result: true, answer: ("15"))
let testMiniGameHuntMM4 = MiniGameHunt(name:"Défi Photo", description: "Retrouve cette image et prends la en photo \(("photoenigme3" )) ", result: true, answer: ("photodelaMM"))

let testTableMiniGameHunt7 = [testMiniGameHuntMM1,testMiniGameHuntMM2]
let testTableMiniGameHunt8 = [testMiniGameHuntMM1,testMiniGameHuntMM2,testMiniGameHuntMM3,testMiniGameHuntMM4]
let testTableMiniGameHunt9 = [testMiniGameHuntMM1,testMiniGameHuntMM2,testMiniGameHuntMM3]

// Les chasses aux trésors
let testMainGame1 = MainGame(name: "La chasse aux trésors du Louvre", description: "Des clés, des défis et le Louvre à découvrir", points: 50 , numberOfUsers: 10, startDate: "14h00", expectedMinutesToFinish: 60, keys: 3 , miniGames: testTableMiniGameHunt3, latitude: 49.03, longitude: 2.5, result: true)

let testMainGame2 = MainGame(name: "La chasse aux trésors de la Tour Eiffel", description: "Des clés, des défis et la tour Eiffel à découvrir", points: 60 , numberOfUsers: 10, startDate: "14h00", expectedMinutesToFinish: 60, keys: 3 , miniGames: testTableMiniGameHunt6, latitude: 48.85, longitude: 2.29, result: true)

let testMainGame3 = MainGame(name: "La chasse aux trésors de MontMartre", description: "Des clés, des défis et ses alentours à découvrir", points: 100 , numberOfUsers: 10, startDate: "14h00", expectedMinutesToFinish: 60, keys: 4 , miniGames: testTableMiniGameHunt8, latitude: 48.89, longitude: 2.34, result: true)

let testTableMainGame1 = [testMainGame1,testMainGame2]
let testTableMainGame2 = [testMainGame1,testMainGame2, testMainGame3]
let testTableMainGame3 = [testMainGame2, testMainGame3]


// Liste des jeux finis (completedStories)
let testCompletedStories1 = [testMainGame3.name,testMainGame2.name]
let testCompletedStories2 = [testMainGame3.name,testMainGame2.name,testMainGame1.name]
let testCompletedStories3 = [testMainGame3.name,testMainGame1.name]

// Keys Louvre * faire keys tour et Montmartre
let louvrekey1 = Key(latitude: 48.86042450184312, longitude: 2.3378299148013593, image: "key", game: testMiniGameHuntLouvre1)
let louvrekey2 = Key(latitude: 48.86105787098596, longitude: 2.3361638120122894, image: "key", game: testMiniGameHuntLouvre2)
let louvrekey3 = Key(latitude: 48.86169676767871, longitude: 2.33598607059994, image: "key", game:testMiniGameHuntLouvre3)
let louvrekey4 = Key(latitude: 48.86269676767865, longitude: 2.33698607059965, image: "key", game: testMiniGameHuntLouvre4)

let louvreKeyList = [louvrekey1, louvrekey2,louvrekey3,louvrekey4]


let EiffelTowerKey1 = Key(latitude: 48.8583988, longitude: 2.293900, image: "key", game: testMiniGameHuntLouvre1)
let EiffelTowerKey2 = Key(latitude: 48.8552156, longitude: 2.292966, image: "key", game: testMiniGameHuntLouvre2)
let EiffelTowerKey3 = Key(latitude: 48.8515156, longitude: 2.297677, image: "key", game:testMiniGameHuntLouvre3)
let EiffelTowerKey4 = Key(latitude: 48.8527156, longitude: 2.295960, image: "key", game: testMiniGameHuntLouvre4)

let EiffelTowerKeyList = [EiffelTowerKey1, EiffelTowerKey2,EiffelTowerKey3,EiffelTowerKey4]

let MontmatreKey1 = Key(latitude: 48.88650863455, longitude: 2.3434246, image: "key", game: testMiniGameHuntLouvre1)
let MontmatreKey2 = Key(latitude: 48.88550856786, longitude: 2.3434876, image: "key", game: testMiniGameHuntLouvre2)
let MontmatreKey3 = Key(latitude: 48.88650834680, longitude: 2.3434896, image: "key", game:testMiniGameHuntLouvre3)
let MontmatreKey4 = Key(latitude: 48.88650897544, longitude: 2.3434098, image: "key", game: testMiniGameHuntLouvre4)

let MontmatreKeyList = [MontmatreKey1, MontmatreKey2,MontmatreKey3,MontmatreKey4]


//Messages pour le chat
var message1 = Message(sender: user2, content:" ça va?")
var message2 = Message(sender: user1, content: "que fais tu")
var message3 = Message(sender: user2, content: "je dors")
var message4 = Message(sender: user3, content: "je suis fatigué")
var message5 = Message(sender: userD, content: "Si quelque chose ne va pas, tu peux te confier à moi")

let messagetab1 = [message1,message2,message3,message4]


// Chatbot  messages
var cbmessageOne = ChatBot(date: "8h", message: "il est 8h ! va prendre ton petit dej'")
var cbmessageTwo = ChatBot(date: "12h", message: "il est midi va aider tes parents à préparer à manger")
var cbmessageThree = ChatBot(date: "16h", message: "il est 16h ! va prendre ton gouter")
var cbmessageFour = ChatBot(date: "18h", message: "il est 18h! va aider tes parents a faire a manger")
var cbmessageFive = ChatBot(date: "20h", message: "il est 20h! vas te coucher")

var chatBotList1 = [cbmessageOne, cbmessageTwo, cbmessageFive, cbmessageFour]
var chatBotLit2 = [cbmessageFour, cbmessageFive]

// Bus
var busLouvre = Bus(name: testMainGame1.name, timer: testMainGame1.startDate, users: userList1, miniGamesList: miniGameBusList)
var busTourEiffel = Bus(name: testMainGame2.name, timer: testMainGame2.startDate, users: userList2, miniGamesList: miniGameBusList)
var busMontmartre = Bus(name: testMainGame3.name, timer: testMainGame3.startDate, users: userList3, miniGamesList: miniGameBusList)

var busList1 = [busLouvre, busTourEiffel, busMontmartre]
var busList2 = [busLouvre, busMontmartre]
