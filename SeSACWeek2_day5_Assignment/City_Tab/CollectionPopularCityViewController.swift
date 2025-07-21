//
//  CollectionPopularCityViewController.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/17/25.
//

import UIKit

class CollectionPopularCityViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    var cityInfo = CityInfo()
    
    @IBOutlet var cityCollectionView: UICollectionView!
    @IBOutlet var citySegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //citySegmentedControl.titleForSegment(at: 0)
        citySegmentedControl.setTitle("모두", forSegmentAt: 0)
        citySegmentedControl.setTitle("국내", forSegmentAt: 1)
        citySegmentedControl.setTitle("해외", forSegmentAt: 2)

        cityCollectionView.delegate = self
        cityCollectionView.dataSource = self
        
        let xib = UINib(nibName: PopularCitiesCollectionViewCell.identifier, bundle: nil)
        cityCollectionView.register(xib, forCellWithReuseIdentifier: PopularCitiesCollectionViewCell.identifier)
        
        let layout = UICollectionViewFlowLayout()
        let deviceWidth = UIScreen.main.bounds.width
        let cellWidth = deviceWidth - (15 * 2) - (15 * 1)
        layout.itemSize = CGSize(width: cellWidth/2, height: cellWidth/2)
        layout.sectionInset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 20
        layout.scrollDirection = .horizontal
        cityCollectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cityInfo.city.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularCitiesCollectionViewCell.identifier, for: indexPath) as! PopularCitiesCollectionViewCell
        let url = URL(string: cityInfo.city[indexPath.item].city_image)!
        cell.cityImageView.kf.setImage(with: url)
        cell.cityNameLabel.text = cityInfo.city[indexPath.item].city_name
        cell.cityExplainLabel.text = cityInfo.city[indexPath.item].city_explain
        return cell
    }
    
    @IBAction func citySegmentedControlChanged(_ sender: UISegmentedControl) {
        //print(sender.selectedSegmentIndex)
        //print(sender.largeContentTitle ?? 0)
        //print(sender.titleForSegment(at: 0))
        let all = CityInfo().city
        if sender.selectedSegmentIndex == 0 {
            cityInfo.city = all
            //cityCollectionView.reloadData() //반복
        } else if sender.selectedSegmentIndex == 1 {
            var filter: [City] = []
            for item in all {
                if item.domestic_travel {
                    filter.append(item)
                }
            }
            cityInfo.city = filter
            //cityCollectionView.reloadData() //반복
        } else if sender.selectedSegmentIndex == 2 {
            var filter: [City] = []
            for item in all {
                if !item.domestic_travel {
                    filter.append(item)
                }
            }
            cityInfo.city = filter
            //cityCollectionView.reloadData() //반복
        }
        cityCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let viewcontroller = self.storyboard?.instantiateViewController(withIdentifier: PopularCityViewController.identifier) as! PopularCityViewController
        viewcontroller.popularCitys = cityInfo.city[indexPath.item]
        
        present(viewcontroller, animated: true)
    }

}
