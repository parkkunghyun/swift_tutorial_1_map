//
//  Landmark.swift
//  Landmarks
//
//  Created by 박경현2 on 2022/04/05.
//

import Foundation
import SwiftUI
import CoreLocation
// 아이폰 디바이스의 위치를 가져오는데 사용 Core Serviece 계층에 속해있다

struct Landmark: Hashable, Codable, Identifiable {
    // Identifiabled은 고유한 id를 통해 각각을 식별한다 -> 나중에 호출할때 편하게 사용하게 해줌
    // Hashable하면 이 구조체 하나가 고유한 키를 가지게 된다
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        // 2D 객체로 생성!!
        
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

