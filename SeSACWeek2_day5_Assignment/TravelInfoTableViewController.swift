//
//  TravelInfoTableViewController.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/14/25.
//

import UIKit
import Kingfisher

class TravelInfoTableViewController: UITableViewController {
    
    var travelInfo = TravelInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let xib = UINib(nibName: "TravelInfoTableViewCell", bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: "TravelInfoTableViewCell")
        let xibAdd = UINib(nibName: "AdButtonTableViewCell", bundle: nil)
        tableView.register(xibAdd, forCellReuseIdentifier: "AdButtonTableViewCell")
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travelInfo.travel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelInfoTableViewCell", for: indexPath) as! TravelInfoTableViewCell
        
        let rowInfo = travelInfo.travel[indexPath.row]

        if rowInfo.ad {
//            travelInfo.travel.remove(at: indexPath.row)
//            tableView.reloadData()
            //여기에 광고버튼 추가?
            let cellAdd = tableView.dequeueReusableCell(withIdentifier: "AdButtonTableViewCell") as! AdButtonTableViewCell
            cellAdd.configureSetting(row: rowInfo)
            return cellAdd
        } else {
            cell.configureSetting(row: rowInfo)
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier: "TravelShowViewController") as! TravelShowViewController
        //2단계:값 전달을 위한 반찬통 통째로 넘겨주기
        viewcontroller.getTravelInfo = travelInfo.travel[indexPath.row]
        
        navigationController?.pushViewController(viewcontroller, animated: true)

    }
    
    @IBAction func adBarButtonItemClicked(_ sender: UIBarButtonItem) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier: "AdPresentViewController") as! AdPresentViewController
        viewcontroller.modalPresentationStyle = .fullScreen
        //viewcontroller.getAdInfo = travelInfo.travel
        present(viewcontroller, animated: true)
        
    }
}
