//
//  MagazineTableViewCell.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/14/25.
//

import UIKit

class MagazineTableViewCell: UITableViewCell {

    @IBOutlet var magazinePhotoImageView: UIImageView!
    
    @IBOutlet var magazineTitleLabel: UILabel!
    
    @IBOutlet var magazineSubtitleLabel: UILabel!
    
    @IBOutlet var magazineDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        magazinePhotoImageView.layer.cornerRadius = 10
        magazineTitleLabel.font = .boldSystemFont(ofSize: 20)
       
    }

    
    
}
