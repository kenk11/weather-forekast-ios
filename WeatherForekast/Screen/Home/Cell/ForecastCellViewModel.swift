//
//  ForecastCellViewModel.swift
//  WeatherForekast
//
//  Created by Ken Lâm on 6/12/20.
//  Copyright © 2020 Ken Lam. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ForecastCellViewModel: BaseViewModel, ViewModelType {

    var forecast: Forecast!
    var date = BehaviorRelay<String>(value: "")
    var temp = BehaviorRelay<String>(value: "")
    var pressure = BehaviorRelay<String>(value: "")
    var humidity = BehaviorRelay<String>(value: "")
    var description = BehaviorRelay<String>(value: "")
    var icon = BehaviorRelay<URL?>(value: nil)
    
    init(_ forecast: Forecast) {
        self.forecast = forecast
    }
    
    func setupData() {
        date.accept("CELL_DATE".localizedFormat(forecast.dateTime))
        temp.accept("CELL_AVERAGE_TEMP".localizedFormat(forecast.tempAverage))
        pressure.accept("CELL_PRESSURE".localizedFormat(forecast.pressure ?? 0))
        humidity.accept("CELL_HUMIDITY".localizedFormat(forecast.humidity ?? 0))
        description.accept("CELL_DESCRIPTION".localizedFormat(forecast.weather[0].description ?? ""))
        icon.accept(forecast.weather[0].iconURL)
    }
}
