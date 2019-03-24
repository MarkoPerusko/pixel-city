//
//  Constants.swift
//  pixel-city
//
//  Created by Marko Perusko on 3/24/19.
//  Copyright © 2019 Marko Perusko. All rights reserved.
//

import Foundation

let apiKey = "1eaa59bdcdb2928b19ba40c6248203e7"

func flickerUrl(forApiKey key: String, withAnnonation annonation: DroppablePin, addNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annonation.coordinate.latitude)&lon=\(annonation.coordinate.longitude)&radius=1&radius_units=km&per_page=\(number)&format=json&nojsoncallback=1"
}

// https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=b757fd30e14e9f145ae5f60fbe68fd57&lat=42.8&lon=122.3&radius=1&radius_units=km&per_page=40&format=json&nojsoncallback=1
