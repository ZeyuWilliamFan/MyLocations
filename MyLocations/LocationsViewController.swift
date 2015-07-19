//
//  LocationsViewController.swift
//  MyLocations
//
//  Created by Zeyu Fan on 15/7/18.
//  Copyright (c) 2015年 Zeyu Fan. All rights reserved.
//

import UIKit
import CoreData
import CoreLocation

class LocationsViewController: UITableViewController {

    var managedObjectContext: NSManagedObjectContext!
    var locations = [Location]()
    
    // MARK: - UITableViewDataSource
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fetchRequest = NSFetchRequest()
        let entity = NSEntityDescription.entityForName("Location", inManagedObjectContext: managedObjectContext)
        fetchRequest.entity = entity
        
        let sortDescriptor = NSSortDescriptor(key: "date", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        var error: NSError?
        let foundObjects = managedObjectContext.executeFetchRequest( fetchRequest, error: &error)
        
        if foundObjects == nil {
            fatalCoreDataError(error)
            return
        }
        locations = foundObjects as! [Location]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return locations.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("LocationCell") as! LocationCell
        let location = locations[indexPath.row]
        cell.configureForLocation(location)
        
        return cell
        
    }


}
