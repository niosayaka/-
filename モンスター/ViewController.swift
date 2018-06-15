//
//  ViewController.swift
//  モンスター
//
//  Created by 丹尾 沙也花 on 2018/06/06.
//  Copyright © 2018年 litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var monster: [Monster] = []
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let monster1 = Monster()
        monster1.image = UIImage(named: "image1.jpg")
        monster1.name = "bird1"
        
        let monster2 = Monster()
        monster2.image = UIImage(named: "image2.jpg")
        monster2.name = "bird2"
        
        let monster3 = Monster()
        monster3.image = UIImage(named: "image3.jpg")
        monster3.name = "bird3"
        
        monster = [monster1, monster2, monster3]
        
        let image = UIImage(named: "image1.jpg")
        label.text = monster1.name
        //最初の画像
        imageView.image = image
        
    }
    
    @IBAction func next(_ sender: Any) {
        number += 1
        if number > 2 {
            number = 0
        }
        label.text = monster[index].name
        imageView.image = monster[index].image
    }
    
    @IBAction func back(_ sender: Any) {
        number -= 1
        if number < 0 {
            number = 2
        }
        label.text = monster[index].name
        imageView.image = monster[index].image
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

