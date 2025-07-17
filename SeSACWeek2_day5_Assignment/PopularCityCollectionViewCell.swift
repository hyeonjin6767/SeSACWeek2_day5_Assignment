//
//  PopularCityCollectionViewCell.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/17/25.
//

import UIKit

class PopularCityCollectionViewCell: UICollectionViewCell {

    @IBOutlet var cityImageView: UIImageView!
    @IBOutlet var cityNameLabel: UILabel!
    @IBOutlet var cityExplainLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cityNameLabel.textAlignment = .center
        cityNameLabel.font = .boldSystemFont(ofSize: 15)
        cityExplainLabel.textAlignment = .center
        cityExplainLabel.font = .systemFont(ofSize: 13)
        cityExplainLabel.textColor = .gray
        cityImageView.contentMode = .scaleAspectFill
        cityImageView.layer.cornerRadius = cityImageView.frame.height/2
        cityImageView.layer.shouldRasterize = true
        cityImageView.clipsToBounds = true
    }

}
