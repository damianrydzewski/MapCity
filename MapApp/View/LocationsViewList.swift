//
//  LocationsViewList.swift
//  MapApp
//
//  Created by Damian on 14/02/2023.
//

import SwiftUI

struct LocationsViewList: View {
    @EnvironmentObject private var vm: LocationsViewModel

    var body: some View {
        List {
            ForEach(vm.locations) { location in
                Button {
                    vm.moveToSelectedLocation(location: location)
                } label: {
                    listRowView(location: location)
                }
                .listRowBackground(Color.clear)

                
            }
        }
        .frame(maxHeight: 360)
        .listStyle(.plain)
    }
}

struct LocationsViewList_Previews: PreviewProvider {
    static var previews: some View {
        LocationsViewList()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsViewList {
    
    private func listRowView(location: Location) -> some View {
        HStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .cornerRadius(15)
            }
            
            VStack (alignment: .leading) {
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.callout)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
