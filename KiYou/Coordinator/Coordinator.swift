//
//  Coordinator.swift
//  KiYou
//
//  Created by Laura LONG on 18/03/2021.
//

import Foundation
import MapKit

final class Coordinator : NSObject,MKMapViewDelegate{
    var control : MapView
    init(_ control : MapView){
        self.control = control
    }
}







