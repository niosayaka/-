//
//  ViewController.swift
//  モンスター
//
//  Created by 丹尾 沙也花 on 2018/06/06.
//  Copyright © 2018年 litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageview:UIImageView!
    @IBOutlet var label:UILabel!
    
    var dispImageNo = 0
    
    @IBAction func next(_sender: AnyObject){
        
        dispImageNo += 1
        
        displayImage()
        
    }
    
    @IBAction func back(_sender: AnyObject){
        
        dispImageNo -= 1
        
        displayImage()
        
    }
    
    func displayImage() {
       
        let imageNameArray = [
        "image1.jpg",
        "image2.jpg",
        "image3.jpg",
        ]
        
        if dispImageNo < 0 {
            dispImageNo = 2
            
        }
        
        if dispImageNo > 2 {
            dispImageNo = 0
        }
        
        let name = imageNameArray[dispImageNo]
        
        let image = UIImage(named: name)
        if dispImageNo == 0 {
            label.text = "黒沢さん"
            
        }else if dispImageNo == 1 {
            label.text = "三沢さん"
            
        }else if dispImageNo == 2 {
            label.text = "大沢さん"
        }
        
        imageview.image = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image = UIImage(named: "image1")
        imageview.image = image
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

