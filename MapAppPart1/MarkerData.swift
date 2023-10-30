//
//  MarkerData.swift
//  MapAppPart1
//
//  Created by 渡邊魁優 on 2023/10/29.
//

import Foundation
import MapKit

class MapData: ObservableObject {
    @Published var markers: [Pin] = [
        Pin(name: "A", data: CLLocationCoordinate2D(latitude: 35.659099, longitude: 139.7453599)),
        Pin(name: "B", data: CLLocationCoordinate2D(latitude: 35.658000, longitude: 139.7456316))
    ]
}
