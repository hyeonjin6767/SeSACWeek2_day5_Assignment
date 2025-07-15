//
//  ForXIBMagazineTableViewController.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/14/25.
//

import UIKit
import Kingfisher

class ForXIBMagazineTableViewController: UITableViewController {

    let magazineInfo = MagazineInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //XIB로 변경 //셀 등록
        let xib = UINib(nibName: "MagazineTableViewCell", bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: "MagazineTableViewCell")
        
        //tableView.rowHeight = UITableView.automaticDimension

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return magazineInfo.magazine.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MagazineTableViewCell", for: indexPath) as! MagazineTableViewCell
        let rowInfo = magazineInfo.magazine[indexPath.row]
        cell.configureSetting(row: rowInfo)
        //이미지뷰 레이아웃 테스트용 백그라운드컬러 설정 - 잭님's 팁
        //cell.magazinePhotoImageView.backgroundColor = .red
        //cell.magazinePhotoImageView.contentMode = .scaleAspectFill
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 500
        return UITableView.automaticDimension
    }
}
