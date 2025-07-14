//
//  ForXIBMagazineTableViewController.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/14/25.
//

import UIKit

class ForXIBMagazineTableViewController: UITableViewController {

    let magazineInfo = MagazineInfo()
    
    let format = DateFormatter() //위치 변경
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //XIB로 변경
        let xib = UINib(nibName: "MagazineTableViewCell", bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: "MagazineTableViewCell")

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return magazineInfo.magazine.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MagazineTableViewCell", for: indexPath) as! MagazineTableViewCell
        cell.magazineTitleLabel.text = magazineInfo.magazine[indexPath.row].title
        
        let url = URL(string: magazineInfo.magazine[indexPath.row].photo_image)!
        cell.magazinePhotoImageView.kf.setImage(with: url)
        cell.magazineSubtitleLabel.text = magazineInfo.magazine[indexPath.row].subtitle
        
        //https://formestory.tistory.com/m/6
        let dateString = magazineInfo.magazine[indexPath.row].date
        //let format = DateFormatter() //위로
        format.dateFormat = "yyMMdd"
        let convertDate = format.date(from: dateString)
        let magazineDateForm = DateFormatter()
        magazineDateForm.dateFormat = "yy년 MM월 dd일"
        let convertString = magazineDateForm.string(from: convertDate!)
        cell.magazineDateLabel.text = convertString
       
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }

    

}
