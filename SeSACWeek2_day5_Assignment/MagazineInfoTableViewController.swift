//
//  MagazineInfoTableViewController.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/12/25.
//

import UIKit

import Kingfisher


class MagazineInfoTableViewController: UITableViewController {

    let magazineInfo = MagazineInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        print(magazineInfo.magazine.count)
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return magazineInfo.magazine.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "magazineInfoCell", for: indexPath) as! MagazineInfoTableViewCell
        cell.magazineTitleLabel.text = magazineInfo.magazine[indexPath.row].title
        let url = URL(string: magazineInfo.magazine[indexPath.row].photo_image)!
        cell.magazinePhotoImageView.kf.setImage(with: url)
        cell.magazineSubtitleLabel.text = magazineInfo.magazine[indexPath.row].subtitle
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
    
}
