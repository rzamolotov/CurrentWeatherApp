//
//  WeatherModel.swift
//  CurrentWeatherApp
//
//  Created by Роман Замолотов on 14.02.2023.
//

import Foundation

struct WeatherModel {
    let conditionID: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.0f", temperature)
    }
    
    var conditionName: String {
        switch conditionID {
        case 200...232:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 700...781:
            return "sun.dust"
        case 800:
            return "sun.max"
        default:
            return "cloud"
        }
    }
}
