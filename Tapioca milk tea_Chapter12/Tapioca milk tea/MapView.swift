//
//  MapView.swift
//  Tapioca milk tea
//
//  Created by 原昂大 on 2021/04/04.
//  Copyright © 2021 example.com. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var location: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.01,
                                    longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: location,
                                        span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(location: dataStore.shops[0].locationCoordinate)
    }
}
