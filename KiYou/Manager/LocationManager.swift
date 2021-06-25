//
//  LocationManager.swift
//  KiYou
//
//  Created by Laura LONG on 18/03/2021.
//

import Foundation
import MapKit

class LocationManager : NSObject {
    private let locationManager = CLLocationManager()
    var location : CLLocation? = nil
    override init() {
        
        super.init()
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.distanceFilter = kCLDistanceFilterNone
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
        
    }
}

extension LocationManager: CLLocationManagerDelegate {
    
    
    
}



