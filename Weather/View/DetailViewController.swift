//
//  DetailViewController.swift
//  Weather
//
//  Created by Илья Горшков on 9.08.21.
//

import UIKit
import SwiftSVG

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameCityLabel: UILabel!
    @IBOutlet weak var viewCity: UIView!
    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var maxTempLabel: UILabel!
    @IBOutlet weak var minTempLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    
    var weatherModel: Weather?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshLabels()

       
    }
    
    func refreshLabels() {
        self.nameCityLabel.text = weatherModel?.name
        
        let url = URL(string: "https://yastatic.net/weather/i/icons/funky/dark/\(weatherModel!.conditionCode).svg")
        
        print(url)
        
        let weatherImage = UIView(SVGURL: url!) { (image) in
            image.resizeToFit(self.viewCity.bounds)
            
        }
        
        self.viewCity.addSubview(weatherImage)
        
        self.conditionLabel.text = weatherModel?.conditionString
        self.maxTempLabel.text = "\(String(describing: weatherModel?.tempMax))"
        self.minTempLabel.text = "\(String(describing: weatherModel?.tempMin))"
        self.windSpeedLabel.text = "\(String(describing: weatherModel?.windSpeed))"
        self.pressureLabel.text = "\(String(describing: weatherModel?.presureMm))"
        self.tempLabel.text = weatherModel?.temperatureString
    }
    

}
