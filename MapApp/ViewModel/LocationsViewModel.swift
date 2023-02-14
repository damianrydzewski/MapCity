//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by Damian on 13/02/2023.
//

import Foundation
import MapKit
import SwiftUI

final class LocationsViewModel: ObservableObject {
    
    //All locations
    @Published var locations: [Location]
    
    //Current map position
    @Published var currentMapLocation: Location {
        didSet {
            withAnimation(.easeIn) {
                updateMapRegion(location: currentMapLocation)
            }
        }
    }
    //Current region
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    
    //Show list locations
    @Published var showListLocations: Bool = false
    
    init() {
        self.locations = LocationDataService.locations
        currentMapLocation = LocationDataService.locations.first!
        updateMapRegion(location: currentMapLocation)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        }
    }
    
    func showListOfLocations() {
        withAnimation(.spring()) {
            showListLocations.toggle()        }
    }
    
    func moveToSelectedLocation(location: Location) {
        currentMapLocation = location
        showListLocations = false
    }
    
    func nextButton() {
        
    }
}
