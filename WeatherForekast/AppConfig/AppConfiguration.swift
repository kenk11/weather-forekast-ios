//
//  AppConfiguration.swift
//  WeatherForekast
//
//  Created by Ken Lâm on 6/11/20.
//  Copyright © 2020 Ken Lam. All rights reserved.
//

import Foundation

class AppConfiguration {
    static let OPENWEATHERMAP_ENDPOINT = "https://api.openweathermap.org/data/2.5/"
    static let OPENWEATHERMAP_API_KEY = "60c6fbeb4b93ac653c492ba806fc346d"
    static let NETWORK_RETRY_COUNT = 2
    
    static let DEFAULT_LANGUAGE = Language.english
    static let DEFAULT_TEMP_UNIT = TemperatureUnit.celsius
    static let DEFAULT_DATE_FORMAT = "EEE, dd MMM yyyy"
    
    static let FORECAST_DAYS_MIN = 1
    static let FORECAST_DAYS_DEFAULT = 7
    static let FORECAST_DAYS_MAX = 16
}
