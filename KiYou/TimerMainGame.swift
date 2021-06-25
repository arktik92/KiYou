//
//  Timer.swift
//  KiYou
//
//  Created by Laura LONG on 21/03/2021.
//

import Foundation


func secondsToMinutesAndSeconds(seconds : Int) -> String {
    let minutes = "\((seconds % 3600) / 60)"
    let seconds = "\((seconds % 3600) % 60)"
    let minuteStamps = minutes.count > 1 ? minutes : "0" + minutes
    let secondStamps = seconds.count > 1 ? seconds : "0" + seconds

    return "\(minuteStamps) : \(secondStamps)"
}


