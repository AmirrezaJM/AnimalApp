//
//  InsetMapView.swift
//  AfrikaApp
//
//  Created by joooli on 8/27/21.
//

import SwiftUI
import MapKit

// MARK: - Map
struct InsetMapView: View {
    // MARK: - Property
    @State private var region = MKCoordinateRegion(center:CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599),span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    // second one is the zoom level
    
    
    // MARK: - Body
    var body: some View {
        Map(coordinateRegion: $region)
            .frame(height: 256, alignment: .center)
            .cornerRadius(12)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    } //:HSTACK
                    .padding(.vertical,10)
                    .padding(.horizontal,14)
                    .background(
                        Color.black
                            .opacity(0.6)
                            .cornerRadius(8)
                    )
                } //:NAVIGATION
                .padding(12)
                , alignment: .topTrailing
            )
    }
}


// MARK: - Preview
struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
