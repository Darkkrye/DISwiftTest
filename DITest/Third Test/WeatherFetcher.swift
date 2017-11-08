//
//  WeatherFetcher.swift
//  DITest
//
//  Created by Openfield Mobility on 08/11/2017.
//  Copyright © 2017 Openfield. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

struct WeatherFetcher {
    /*static func fetch(response: ([City]?) -> ()) {
        Alamofire.request(.GET, OpenWeatherMap.url, parameters: OpenWeatherMap.parameters)
            .response { _, _, data, _ in
                let cities = data.map { decode($0) }
                response(cities)
        }
    }
    
    private static func decode(data: NSData) -> [City] {
        let json = JSON(data: data as Data)
        var cities = [City]()
        for (_, j) in json["list"] {
            if let id = j["id"].int {
                let city = City(
                    id: id,
                    name: j["name"].string ?? "",
                    weather: j["weather"][0]["main"].string ?? "")
                cities.append(city)
            }
        }
        return cities
    }*/
}
