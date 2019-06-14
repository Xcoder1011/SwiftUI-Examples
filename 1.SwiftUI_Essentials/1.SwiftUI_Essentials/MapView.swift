//
//  MapView.swift
//  1.SwiftUI_Essentials
//
//  Created by shangkun on 2019/6/13.
//  Copyright © 2019 wushangkun. All rights reserved.
//

import SwiftUI
import MapKit

// 遵循 UIViewRepresentable 协议
struct MapView : UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        
        let coordinate = CLLocationCoordinate2D(
            latitude: 31.24916171, longitude: 121.48789949)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
