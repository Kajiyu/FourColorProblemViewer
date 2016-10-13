//
//  ViewController.swift
//  FourColorProblem
//
//  Created by KajiharaYuma on 2016/10/06.
//  Copyright © 2016年 KajiharaYuma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cell0: UIView!
    @IBOutlet weak var cell1: UIView!
    @IBOutlet weak var cell2: UIView!
    @IBOutlet weak var cell3: UIView!
    @IBOutlet weak var cell4: UIView!
    @IBOutlet weak var cell5: UIView!
    @IBOutlet weak var cell6: UIView!
    @IBOutlet weak var cell7: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var cells : [UIView] = [cell0, cell1, cell2, cell3, cell4, cell5, cell6, cell7]
        let region0 : Region = Region(_index: 0, _neighbors: [1,2,4,5,6,7])
        let region1 : Region = Region(_index: 1, _neighbors: [0,2,3,4,5])
        let region2 : Region = Region(_index: 2, _neighbors: [0,1,3,6])
        let region3 : Region = Region(_index: 3, _neighbors: [1,2,4,6])
        let region4 : Region = Region(_index: 4, _neighbors: [0,1,3,5,6,7])
        let region5 : Region = Region(_index: 5, _neighbors: [0,1,4])
        let region6 : Region = Region(_index: 6, _neighbors: [0,2,3,4,7])
        let region7 : Region = Region(_index: 7, _neighbors: [0,4,6])
        var regions : [Region] = [region0, region1, region2, region3, region4, region5, region6, region7]
        var calculator : Calculation = Calculation(_regions: regions)
        calculator.search(0)
        var i : Int = 0
        for region in regions {
            cells[i].backgroundColor = region.color
            i = i + 1
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

