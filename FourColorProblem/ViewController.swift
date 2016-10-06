//
//  ViewController.swift
//  FourColorProblem
//
//  Created by KajiharaYuma on 2016/10/06.
//  Copyright © 2016年 KajiharaYuma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let region0 : Region = Region(_index: 0, _neighbors: [1,2,3,5,10,11])
        let region1 : Region = Region(_index: 1, _neighbors: [0,3,4,8,11])
        let region2 : Region = Region(_index: 2, _neighbors: [0,3,5,6])
        let region3 : Region = Region(_index: 3, _neighbors: [0,1,2,4,6,7])
        let region4 : Region = Region(_index: 4, _neighbors: [1,3,7,8])
        let region5 : Region = Region(_index: 5, _neighbors: [0,2,6,9,10])
        let region6 : Region = Region(_index: 6, _neighbors: [2,3,5,7,9])
        let region7 : Region = Region(_index: 7, _neighbors: [3,4,6,8,9])
        let region8 : Region = Region(_index: 8, _neighbors: [1,4,7,9,11])
        let region9 : Region = Region(_index: 9, _neighbors: [5,6,7,8,10,11])
        let region10 : Region = Region(_index: 10, _neighbors: [0,5,9,11])
        let region11 : Region = Region(_index: 11, _neighbors: [0,1,8,9,10])
        var regions : [Region] = [region0, region1, region2, region3, region4, region5, region6, region7, region8, region9, region10, region11]
        var calculator : Calculation = Calculation(_regions: regions)
        calculator.search(0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

