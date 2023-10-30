//
//  ContentView.swift
//  MapAppPart1
//
//  Created by 渡邊魁優 on 2023/10/27.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @StateObject var markerData = MapData()
    @State private var selectedTag: UUID?
    
    var body: some View {
        MapReader { reader in
            Map(selection: $selectedTag) {
                ForEach(markerData.markers) { marker in
                    Marker(marker.name, coordinate: marker.data)
                        .tag(marker.id)
                }
            }
            .onTapGesture(perform: { screenLocation in
                guard let location = reader.convert(screenLocation, from: .local)
                else {
                    print("else")
                    return
                }
                print(location)
            })
        }
    }
}

#Preview {
    ContentView()
}
