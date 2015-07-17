//
//  Location.swift
//  MyLocations
//
//  Created by Zeyu Fan on 15/7/17.
//  Copyright (c) 2015年 Zeyu Fan. All rights reserved.
//

import Foundation
import CoreData
import CoreLocation

class Location: NSManagedObject {

    @NSManaged var latitude: Double
    @NSManaged var longitude: Double
    @NSManaged var date: NSDate
    @NSManaged var locationDescription: String
    @NSManaged var category: String
    @NSManaged var placemark: CLPlacemark?
}
