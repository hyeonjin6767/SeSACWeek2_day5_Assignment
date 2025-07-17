//
//  TravelInfoTableViewCell.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/14/25.
//

import UIKit

class TravelInfoTableViewCell: UITableViewCell {

    @IBOutlet var travelTitleLabel: UILabel!
    @IBOutlet var travelDescriptionLabel: UILabel!
    @IBOutlet var likeAndSaveLabel: UILabel!
    @IBOutlet var travelPictureImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        travelTitleLabel.font = .boldSystemFont(ofSize: 20)
        travelPictureImageView.layer.cornerRadius = 15
        travelPictureImageView.contentMode = .scaleAspectFill
        
    }

    func configureSetting(row: Travel) {
        travelTitleLabel.text = row.title
        let url = URL(string: row.travel_image)!
        travelPictureImageView.kf.setImage(with: url)
        travelDescriptionLabel.text = row.description
        likeAndSaveLabel.text = "\(row.grade), \(row.save)"
    }
    
}
