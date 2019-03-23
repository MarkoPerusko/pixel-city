//
//  DroppablePin.swift
//  pixel-city
//
//  Created by Marko Perusko on 3/23/19.
//  Copyright © 2019 Marko Perusko. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        
        super.init()
    }
}
