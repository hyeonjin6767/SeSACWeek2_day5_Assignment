//
//  AdButtonTableViewCell.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/16/25.
//

import UIKit

class AdButtonTableViewCell: UITableViewCell {

    @IBOutlet var adAddButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configureSetting(row: Travel) {
        adAddButton.setTitle(row.title, for: .normal)
        adAddButton.tintColor = .black
        //adAddButton.addTarget(self, action: #selector(adAddButtonClicked), for: .touchUpInside)
    }
    
//    @objc func adAddButtonClicked (row: Travel) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let viewcontroller = storyboard.instantiateViewController(withIdentifier: "AdPresentViewController") as! AdPresentViewController
//        viewcontroller.modalPresentationStyle = .fullScreen
//        viewcontroller.getAdInfo.title = row.title
//        present(viewcontroller, animated: true)
//    }
}
