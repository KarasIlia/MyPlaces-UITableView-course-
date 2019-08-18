//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Илья Карась on 18/08/2019.
//  Copyright © 2019 Ilia Karas. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
}
