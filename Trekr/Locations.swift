//
//  Locations.swift
//  Trekr
//
//  Created by Patrik Harmaňoš on 15/05/2021.
//

import Foundation

class Locations: ObservableObject {
    /* array of locations */
    let places: [Location]
    
    var primary: Location {
        places[0]
    }
    
    init() {
        /* finds the location of locations.json */
        /* ! - it has to find it, other way whole app crashes */
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
