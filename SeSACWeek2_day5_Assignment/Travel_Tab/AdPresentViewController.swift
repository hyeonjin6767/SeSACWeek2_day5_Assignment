//
//  AdPresentViewController.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/15/25.
//

import UIKit

class AdPresentViewController: UIViewController {

    @IBOutlet var adLabel: UILabel!
    
    var getAdInfo: Travel = Travel(title: "", description: "", travel_image: "", grade: 0.0, save: 0, like: false, ad: false)

    override func viewDidLoad() {
        super.viewDidLoad()

        adLabel.numberOfLines = 3
        adLabel.textAlignment = .center
        adLabel.font = .boldSystemFont(ofSize: 25)
        adLabel.textColor = .black
        adLabel.text = getAdInfo.title
    }
    
    @IBAction func dissmissBarButtonClicked(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}
