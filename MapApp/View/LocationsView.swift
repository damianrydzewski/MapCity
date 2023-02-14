//
//  LocationsView.swift
//  MapApp
//
//  Created by Damian on 13/02/2023.
//

import SwiftUI
import MapKit
 
struct LocationsView: View {

    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.mapRegion)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                header
                    .padding()
                
                Spacer()
            }
            
            
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}


extension LocationsView {
    
    private var header: some View {
        VStack {
            Button {
                vm.showListOfLocations()
            } label: {
                VStack {
                    Text(vm.currentMapLocation.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                    
                    Text(vm.currentMapLocation.cityName)
                }
            }
            .padding(.vertical, 3)

            if vm.showListLocations {
                LocationsViewList()
            }
            
        }
        .foregroundColor(.primary)
        .background(.thinMaterial)
        .cornerRadius(15)
        .shadow(radius: 20)
        .overlay(alignment: .bottomTrailing) {
            Image(systemName: "arrow.down")
                .font(.headline)
                .foregroundColor(.primary)
                .padding()
                .rotationEffect(Angle(degrees: vm.showListLocations ? 180 : 0))
        }
    }
}
