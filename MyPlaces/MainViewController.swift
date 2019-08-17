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
    
    let places = Place.getPlaces()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.nameLabel.text = places[indexPath.row].name
        cell.typeLabel.text = places[indexPath.row].type
        cell.locationLabel.text = places[indexPath.row].location
        cell.imageOfPlace.image = UIImage(named: places[indexPath.row].image)
        
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.height / 2
        cell.imageOfPlace.clipsToBounds = true
        
        
        return cell
    }
    
    // MARK: - Navigation
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        <#code#>
//    }
    
    @IBAction func cancelAction(_ segue: UIStoryboardSegue) {}
}
