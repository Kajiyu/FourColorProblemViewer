//
//  Calculation.swift
//  FourColorProblem
//
//  Created by KajiharaYuma on 2016/10/06.
//  Copyright © 2016年 KajiharaYuma. All rights reserved.
//

import Foundation
import UIKit

class Calculation {
    var regions : [Region] = []
    let colorList = [UIColor.redColor(), UIColor.blueColor(), UIColor.greenColor(), UIColor.yellowColor()]
    
    init(_regions : [Region]){
        for region in _regions {
            regions.append(region)
        }
    }
    
    func check_same_color(node:Int, color:UIColor) -> Bool {
        for regionIndex in regions[node].neighbors {
            if regions[regionIndex].color == color {
                return false
            }
        }
        return true
    }
    
    func search(node: Int) -> Void {
        if node == regions.count {
            print("\(node)area is the search finished.")
        } else {
            for _color in colorList {
                if check_same_color(node, color: _color) == true {
                    regions[node].color = _color
                    search(node+1)
//                    regions[node].color = colorList[0]
                }
            }
        }
    }
    
    func addRegionsList(_regions: [Region] ) -> Void {
        for region in _regions {
            regions.append(region)
        }
    }
    
    
}
