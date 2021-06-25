//
//  Date.swift
//  date
//
//  Created by Esteban Semellier on 22/03/2021.
//

import SwiftUI
struct MyDate : View {
    
    var date: Date
    init(hour:Int, minute:Int) {
        var components = Calendar.current.dateComponents([.year, .month, .day, .minute, .second], from: Date())
        components.hour = hour
        components.minute = minute
         date = Calendar.current.date(from: components) ?? Date()
    }
    var body: some View {
        VStack {
            Text("Lancement de kiYOU")
                .font(.system(size: 30))
                .frame(height: 50)
                
                
            
            TimerView(setDate: date)
            
        }.font(.system(size: 50))
    }
}


struct TimerView: View {
    @State var nowDate: Date = Date()
    let setDate: Date
    var timerB: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in self.nowDate = Date()
            
        }
    }
    var body: some View {
        Text(format(duration: nowDate.distance(to: setDate)))
            .onAppear(perform: {self.timerB
                })
    }
    func format(duration: TimeInterval) -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .abbreviated
        formatter.maximumUnitCount = 3

        return formatter.string(from: duration)!
    }
}


