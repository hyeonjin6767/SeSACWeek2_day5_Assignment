//
//  TravelInfoTableViewController.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/14/25.
//

import UIKit
import Kingfisher

class TravelInfoTableViewController: UITableViewController {
    
    let travelInfo = TravelInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
        let xib = UINib(nibName: "TravelInfoTableViewCell", bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: "TravelInfoTableViewCell")

       
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travelInfo.travel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelInfoTableViewCell", for: indexPath) as! TravelInfoTableViewCell
        let rowInfo = travelInfo.travel[indexPath.row]
        cell.configureSetting(row: rowInfo)
        
       return cell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }

    

}
