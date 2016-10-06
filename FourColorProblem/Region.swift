//
//  Region.swift
//  FourColorProblem
//
//  Created by KajiharaYuma on 2016/10/06.
//  Copyright © 2016年 KajiharaYuma. All rights reserved.
//

import Foundation
import UIKit

class Region {
    var color : UIColor
    var index : Int
    var neighbors : [Int] = []
    
    init (_index:Int, _neighbors: [Int]) {
        self.color = UIColor.whiteColor()
        self.index = _index
        for i in _neighbors {
            neighbors.append(i)
        }
    }
}