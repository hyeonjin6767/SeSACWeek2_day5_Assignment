//
//  TravelShowViewController.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/15/25.
//

import UIKit

class TravelShowViewController: UIViewController {

    let travelInfo = TravelInfo()
    @IBOutlet var travelImageView: UIImageView!
    @IBOutlet var travelTitleLabel: UILabel!
    @IBOutlet var travelDescriptionLabel: UILabel!
    @IBOutlet var popButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //임의의 데이터 넣어주기
        let url = URL(string: travelInfo.travel[5].travel_image)!
            travelImageView.kf.setImage(with: url)
        travelTitleLabel.text = travelInfo.travel[5].title
        travelDescriptionLabel.text = travelInfo.travel[5].description
        popButton.setTitle("다른 광광지 보러가기", for: .normal)
    }
    
    @IBAction func popButtonClicked(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
        
    }
}
