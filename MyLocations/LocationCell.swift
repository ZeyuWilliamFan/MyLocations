//
//  LocationCell.swift
//  MyLocations
//
//  Created by Zeyu Fan on 15/7/18.
//  Copyright (c) 2015年 Zeyu Fan. All rights reserved.
//

import UIKit

class LocationCell: UITableViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    
    func configureForLocation(location: Location) {
        
        if location.locationDescription.isEmpty {
            descriptionLabel.text = "(No Description)"
        }
        else {
            descriptionLabel.text = location.locationDescription
        }
        
        if let placemark = location.placemark {
            addressLabel.text = "\(placemark.subThoroughfare) \(placemark.thoroughfare)," +
                                "\(placemark.locality)"
        }
        else {
            addressLabel.text = String(format: "Lat: %.8f, Long: %.8f", location.latitude, location.longitude)
        }
    }
}