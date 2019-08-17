//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Илья Карась on 17/08/2019.
//  Copyright © 2019 Ilia Karas. All rights reserved.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restaurantNames = ["McDonald's", "KFC", "ML", "Papa Johns", "Molly Malone"]

    static func getPlaces() -> [Place] {
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "SPB", type: "Restaurant", image: place))
        }
        
        return places
    }
    
}
