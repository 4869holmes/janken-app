//
//  ViewController.swift
//  MyJanken
//
//  Created by 外岡拓馬 on 2019/07/24.
//  Copyright © 2019 外岡拓馬. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var answerImageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    //ジャンケン（数字）
    var answerNumber = 0

    
@IBAction func shuffleAction(_ sender: Any) {
        
        //０、１、２の数字をランダムbに表示
        //arc4random_uniformの戻り値はUInt32だが、h上旬的な整数型Intにキャストする
        
        answerNumber = Int(arc4random_uniform(3))
        
        if answerNumber == 0 {
            
        //gu
        answerLabel.text = "グー"
        answerImageView.image = UIImage(named: "gu")
            
        } else if answerNumber == 1 {
    
        //choki
        answerLabel.text = "チョキ"
        answerImageView.image = UIImage(named: "choki")
        
        
         } else if answerNumber == 2 {
    
        //pa
        answerLabel.text = "パー"
        answerImageView.image = UIImage(named: "pa")
            
       }
        
      
        
    }
   
    }

