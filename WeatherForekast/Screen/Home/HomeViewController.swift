//
//  HomeViewController.swift
//  WeatherForekast
//
//  Created by Ken Lâm on 6/11/20.
//  Copyright © 2020 Ken Lam. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController<HomeViewModel> {
    override func setupLocalization() {
        title = "Weather Forekast"
    }
    
    @IBAction func onTapSettings(_ sender: Any) {
        Router.shared.toSettings()
    }
}