//
//  Game369ViewController.swift
//  SeSACWeek2_day5_Assignment
//
//  Created by 박현진 on 7/13/25.
//

import UIKit

class Game369ViewController: UIViewController {

    @IBOutlet var maxNumberTextF: UITextField!
    @IBOutlet var clapResultLabel: UILabel!
    @IBOutlet var game369ResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        maxNumberTextF.placeholder = "최대 숫자를 입력해주세요"
        
    }

    @IBAction func maxNumberTextFTapped(_ sender: UITextField) {
        
        if maxNumberTextF.text == "\n" {
            print("엔터 감지")
        } else {
            clapResultLabel.text = maxNumberTextF.text
        }
    }
    
    @IBAction func enterButton(_ sender: UIButton) {
        let inputString = maxNumberTextF.text
        let stringToInt = Int(inputString!)
        //if let stringToInt = inputString {
        
        for clap in 1...Int(stringToInt!) {
            let clapCheck10 = clap / 10
            let clapCheck1 = clap % 10
            print("\(clapCheck10),\(clapCheck1)")
            
            if clapCheck10 % 3 == 0 && clapCheck1 % 3 == 0 {
                if clapCheck10 != 0 && clapCheck1 != 0 {
                    clapResultLabel.text?.append("👏👏,")
                } else if clapCheck1 == 0{
                    clapResultLabel.text?.append("👏\(clapCheck1),")
                } else if clapCheck10 == 0 {
                    clapResultLabel.text?.append("👏,")
                }
            } else if clapCheck10 % 3 == 0 && clapCheck10 != 0 {
                clapResultLabel.text?.append("👏\(clapCheck1),")
            } else if clapCheck1 % 3 == 0 && clapCheck1 != 0 {
                clapResultLabel.text?.append("\(clapCheck10)👏,")
            } else {
                clapResultLabel.text?.append("\(clap),")
            }
        }
    }
}
