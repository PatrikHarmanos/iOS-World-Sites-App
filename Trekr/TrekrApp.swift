//
//  TrekrApp.swift
//  Trekr
//
//  Created by Patrik Harmaňoš on 15/05/2021.
//

import SwiftUI

@main
struct TrekrApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "sun.max")
                    Text("Tips")
                }
                
            }
            .environmentObject(locations)
        }
    }
}
