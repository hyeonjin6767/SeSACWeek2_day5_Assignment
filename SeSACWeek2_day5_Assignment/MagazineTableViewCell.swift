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
    
    // static + extension
    let format = DateFormatter() //위치 변경
    
    override func awakeFromNib() { //고정값이 있는 디자인
        super.awakeFromNib()
        
        magazinePhotoImageView.layer.cornerRadius = 10
        magazineTitleLabel.font = .boldSystemFont(ofSize: 20)
    }
    
    func configureSetting(row: Magazine) { //변동값이 필요한 디자인
        
        magazineTitleLabel.text = row.title
        
        let url = URL(string: row.photo_image)!
        magazinePhotoImageView.kf.setImage(with: url)
        magazineSubtitleLabel.text = row.subtitle
        
        let dateString = row.date
        //let format = DateFormatter() //위로
        format.dateFormat = "yyMMdd"
        let convertDate = format.date(from: dateString)
        let magazineDateForm = DateFormatter()
        magazineDateForm.dateFormat = "yy년 MM월 dd일"
        let convertString = magazineDateForm.string(from: convertDate!)
        magazineDateLabel.text = convertString
    }
}
