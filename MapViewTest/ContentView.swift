//
//  ContentView.swift
//  MapViewTest
//
//  Created by 羅壽之 on 2024/11/27.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State var places: [Place] = [
        Place(name: "Taipei 101", address: "", position: CLLocationCoordinate2D(latitude: 25.033611, longitude: 121.565)),
        Place(name: "Sun Moon Lake", address: "", position: CLLocationCoordinate2D(latitude: 23.851880, longitude: 120.921873)),
        Place(name: "Kenting National Park", address: "", position: CLLocationCoordinate2D(latitude: 21.955439, longitude: 120.777463)),
        Place(name: "Alishan National Forest", address: "阿里山，嘉義，台灣")
    ]
    
    // starting region (our school)
    @State var region: MKCoordinateRegion =
    MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 23.892882, longitude: 121.543936), span: MKCoordinateSpan(latitudeDelta: 0.8, longitudeDelta: 0.8))
    
    @State var markers: [Place] = []
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Show Map")
                // Image(systemName: "mappin.circle.fill")
                // Image(systemName: "line.horizontal.3")
                // Image(systemName: "location.viewfinder")
                
            } // VStack
            .navigationTitle("Discover Taiwan")
            
            // toolbar
            .toolbar {
                // seach one place
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Search")
                }
                
                // sample places
                ToolbarItem(placement: .navigationBarTrailing) {
                    Text("Menu")
                }
                
                //Show route
                ToolbarItem(placement: .navigationBarTrailing) {
                    Text("Route")
                }
            } // toolbar
            
        } // NavigationView
        
    } // body
    
    func moveToPlace(index: Int) {
        // move to the region centered at the place with the annotation
        
        let place = places[index]
        // check the position first
        if place.position == nil {
            // get the position from the address
            // after getting the position do the updating of the region and markers (asynchronour manner)
            
        }
        else {
            // update the region's center and the markers with animations
            
        }
    }
    
    func showRoute(destination: Place) {
        guard destination.position != nil else { return }
        
        // Using MapItem
        
        // Using UIApplication.shared.open
        // URL: "maps://?daddr=\(destination.position!.latitude),\(destination.position!.longitude)&directionsmode=driving"
        
        
    }
    
    func searchPlaces(query: String) {
        guard query.isEmpty == false else { return }
        
        // declare a region covering the whole Taiwan island
        let searchRegion = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 23.7, longitude: 121.0),
            span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 3.0)
        )
        
        // Create a search request
        
        
        // Initialize the search
       
        
        // Start the search
       
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
