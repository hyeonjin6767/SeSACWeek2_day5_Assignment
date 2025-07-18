//
//  AdButtonTableViewCell.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/16/25.
//

import UIKit

class AdButtonTableViewCell: UITableViewCell {

    @IBOutlet var adLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        adLabel.font.withSize(17)
        adLabel.textAlignment = .center
        adLabel.textColor = .black
    }
    
    func configureSetting(row: Travel) {
        adLabel.text = row.title
    }
}
