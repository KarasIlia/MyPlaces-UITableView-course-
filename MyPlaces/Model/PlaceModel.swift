//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Илья Карась on 17/08/2019.
//  Copyright © 2019 Ilia Karas. All rights reserved.
//

import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    
    let restaurantNames = ["McDonald's", "KFC", "ML", "Papa Johns", "Molly Malone"]

    func savePlaces() {
        
        for place in restaurantNames {
            
            let image = UIImage(named: place)
            guard let imageData = image?.pngData() else { return }
            
            let newPlace = Place()
            
            newPlace.name = place
            newPlace.location = "SPB"
            newPlace.type = "Restaurant"
            newPlace.imageData = imageData
            
            StorageManager.saveObject(newPlace)
        }
    }
}
