//
//  Monster.swift
//  モンスター
//
//  Created by 丹尾 沙也花 on 2018/06/15.
//  Copyright © 2018年 litech. All rights reserved.
//

import UIKit

class Monster {
    
    var monsterImage : UIImage! = nil
    var monsterName : String! = nil
    
    init(image: UIImage, name: String) {
        self.monsterImage = image
        self.monsterName = name
    }
}
