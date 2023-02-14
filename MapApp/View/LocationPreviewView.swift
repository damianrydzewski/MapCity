//
//  LocationPreviewView.swift
//  MapApp
//
//  Created by Damian on 14/02/2023.
//

import SwiftUI

struct LocationPreviewView: View {
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom){
            VStack(alignment: .leading, spacing: 16) {
                imageSection
                textSection
            }
            
            VStack(spacing: 8){
                learnmoreButton
                nextButton
            }
        }
        .padding(10)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(.ultraThinMaterial)
                .offset(y:50)
        )
        .cornerRadius(15)
    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        LocationPreviewView(location: LocationDataService.locations.first!)
            .padding()
    }
}

extension LocationPreviewView {
    private var imageSection: some View {
        ZStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(15)
            }
        }
    }
    
    private var textSection: some View {
        VStack(alignment: .leading) {
            Text(location.name)
                .font(.headline)
            
            Text(location.cityName)
                .font(.callout)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var learnmoreButton: some View {
        Button {
            //
        } label: {
            Text("Dowiedz się więcej")
                .frame(width: 145, height: 35)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var nextButton: some View {
        Button {
            //
        } label: {
            Text("Następne")
                .frame(width: 145, height: 35)
        }
        .buttonStyle(.bordered)
    }
}
