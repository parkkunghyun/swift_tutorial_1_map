//
//  MapView.swift
//  Landmarks
//
//  Created by 박경현2 on 2022/04/04.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    // state는 기본 스토리지를 관리하고 값에따라 보기를 자동으로 업데이트!
    //
    
    @State private var region = MKCoordinateRegion(center:  CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span:  MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
