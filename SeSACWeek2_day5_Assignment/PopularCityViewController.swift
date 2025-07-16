//
//  PopularCityViewController.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/16/25.
//

import UIKit

class PopularCityViewController: UIViewController {

    @IBOutlet var popularCityImageView: UIImageView!
    @IBOutlet var popualrCityNameLabel: UILabel!
    
    var popularCitys: City = City(city_name: "", city_english_name: "", city_explain: "", city_image: "", domestic_travel: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popularCityImageView.contentMode = .scaleAspectFill
        popualrCityNameLabel.textAlignment = .center
        
        popualrCityNameLabel.text = popularCitys.city_name
        let url = URL(string: popularCitys.city_image)!
        popularCityImageView.kf.setImage(with: url)
    }

}
