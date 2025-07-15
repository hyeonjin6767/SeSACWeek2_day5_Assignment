//
//  AdPresentViewController.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/15/25.
//

import UIKit

class AdPresentViewController: UIViewController {

    @IBOutlet var adLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        adLabel.numberOfLines = 3
        adLabel.text = "도쿄 여행 예약은?\n수업이 있는데 가실 생각은 아니시죠?"
        adLabel.textAlignment = .center
        adLabel.font = .boldSystemFont(ofSize: 25)
        //view.backgroundColor = .brown
    }
    
    @IBAction func dissmissBarButtonClicked(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}
