//
//  CityTableViewCell.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/15/25.
//

import UIKit

class CityTableViewCell: UITableViewCell {
    
    static let identifier = "CityTableViewCell"

    @IBOutlet var cityNameLabel: UILabel!
    @IBOutlet var cityPhotoImageView: UIImageView!
    @IBOutlet var cityExplainLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cityPhotoImageView.layer.cornerRadius = 10
        cityNameLabel.font = .boldSystemFont(ofSize: 20)
        cityNameLabel.textColor = .white
        cityNameLabel.textAlignment = .right
        cityPhotoImageView.contentMode = .scaleAspectFill
        cityExplainLabel.textColor = .white
        cityExplainLabel.backgroundColor = UIColor(white: 0, alpha: 0.5)
        cityExplainLabel.layer.cornerRadius = 20
    }
    
    func configureSet(row: City) {
        cityNameLabel.text = "\(row.city_name) | \(row.city_english_name)    "
        cityExplainLabel.text = " \(row.city_explain)"
        let url = URL(string: row.city_image)!
        cityPhotoImageView.kf.setImage(with: url)

    }
}
