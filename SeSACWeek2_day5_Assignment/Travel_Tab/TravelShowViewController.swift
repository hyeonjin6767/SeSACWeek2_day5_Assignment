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
    
    //1단계:전달받을 값을 받을 빈 그릇만들기
    var getTravelInfo: Travel = Travel(title: "", description: "", travel_image: "", grade: 0.0, save: 0, like: false, ad: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        travelImageView.layer.cornerRadius = 10
        travelImageView.contentMode = .scaleAspectFill
        travelTitleLabel.textAlignment = .center
        travelTitleLabel.font = .boldSystemFont(ofSize: 30)
        travelDescriptionLabel.textAlignment = .center
        travelDescriptionLabel.font = .boldSystemFont(ofSize: 15)
        popButton.setTitle("다른 관광지 보러가기", for: .normal)
        popButton.setTitleColor(.white, for: .normal)
        popButton.backgroundColor = .systemBlue
        popButton.layer.cornerRadius = 10
        
        //3단계:그릇에 받은 데이터 활용
        let url = URL(string: getTravelInfo.travel_image)!
        travelImageView.kf.setImage(with: url)
        travelTitleLabel.text = getTravelInfo.title
        travelDescriptionLabel.text = getTravelInfo.description
        
    }
    
    @IBAction func popButtonClicked(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
        
    }
}
