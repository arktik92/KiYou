//
//  MapView.swift
//  KiYou
//
//  Created by Laura LONG on 18/03/2021.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable{
    
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        return map
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
    }
    
}
