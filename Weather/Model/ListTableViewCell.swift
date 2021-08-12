//
//  ListTableViewCell.swift
//  Weather
//
//  Created by Илья Горшков on 9.08.21.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var nameCityLabel: UILabel!
    @IBOutlet weak var tempCityLabel: UILabel!
    @IBOutlet weak var conditionCitylabel: UILabel!
    
    
    func configure(weather: Weather) {
        self.nameCityLabel.text = weather.name
        self.tempCityLabel.text = weather.temperatureString
        self.conditionCitylabel.text = weather.conditionString
    }
    
}
