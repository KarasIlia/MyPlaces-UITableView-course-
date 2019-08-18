//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Илья Карась on 05/05/2019.
//  Copyright © 2019 Ilia Karas. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    /*
    let restaurantNames = ["McDonald's", "KFC", "ML", "Papa Johns", "Molly Malone"]
    */
    
    //var places = Place.savePlaces()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return places.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
//
//        let place = places[indexPath.row]
//
//        cell.nameLabel.text = place.name
//        cell.typeLabel.text = place.type
//        cell.locationLabel.text = place.location
//
//        if place.image == nil {
//            cell.imageOfPlace.image = UIImage(named: place.restaurantImage!)
//        } else {
//            cell.imageOfPlace.image = place.image
//        }
//
//
//        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.height / 2
//        cell.imageOfPlace.clipsToBounds = true
//
//
//        return cell
//    }
    
    // MARK: - Navigation
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        <#code#>
//    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        
        guard let newPlaceVC = segue.source as? NewPlaceViewController else { return }
        
        newPlaceVC.saveNewPlace()
        //places.append(newPlaceVC.newPlace!)
        tableView.reloadData()
    }
}
