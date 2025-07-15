//
//  TravelShowViewController.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/15/25.
//

import UIKit

class TravelShowViewController: UIViewController {

    @IBOutlet var travelImageView: UIImageView!
    @IBOutlet var travelTitleLabel: UILabel!
    @IBOutlet var travelDescriptionLabel: UILabel!
    @IBOutlet var popButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popButton.setTitle("다른 광광지 보러가기", for: .normal)
    }
    
    @IBAction func popButtonClicked(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
        
    }
}
