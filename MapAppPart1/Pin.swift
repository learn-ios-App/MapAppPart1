//
//  Pin.swift
//  MapAppPart1
//
//  Created by 渡邊魁優 on 2023/10/29.
//

import Foundation
import MapKit

struct Pin: Identifiable {
    let id = UUID()
    let name: String
    let data: CLLocationCoordinate2D
}
