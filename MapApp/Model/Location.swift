//
//  Location.swift
//  MapApp
//
//  Created by Damian on 13/02/2023.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    //Identifiable
    var id: String {
        name + cityName
    }
    
    //Equatable
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.id == rhs.id
    }
}
