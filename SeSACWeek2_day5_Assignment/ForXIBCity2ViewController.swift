//
//  ForXIBCity2ViewController.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/16/25.
//

import UIKit

class ForXIBCity2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let popularCityList = CityInfo()
    
    @IBOutlet var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return popularCityList.city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityTableViewCell", for: indexPath) as! CityTableViewCell
        let row = popularCityList.city[indexPath.row]
        cell.cityNameLabel.text = "\(row.city_name) | \(row.city_english_name)"
        let url = URL(string: row.city_image)!
        cell.cityPhotoImageView.kf.setImage(with: url)
        cell.cityExplainLabel.text = row.city_explain
        return cell
    }
    
    func configureTableView() {
        myTableView.rowHeight = 150
        
        myTableView.delegate = self
        myTableView.dataSource =  self
        
        let xib = UINib(nibName: "CityTableViewCell", bundle: nil)
        myTableView.register(xib, forCellReuseIdentifier: "CityTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewcontroller = self.storyboard?.instantiateViewController(withIdentifier: "PopularCityViewController") as! PopularCityViewController
        
        viewcontroller.popularCitys = popularCityList.city[indexPath.row]
        
        present(viewcontroller, animated: true)
    }
}
