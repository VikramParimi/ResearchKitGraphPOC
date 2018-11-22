//
//  ViewController.swift
//  ResearchKitPOC
//
//  Created by Pairmi, Vikram (US - Bengaluru) on 11/22/18.
//  Copyright © 2018 vikram. All rights reserved.
//

import UIKit
import ResearchKit

class ViewController: UIViewController {
    
    @IBOutlet weak var graphView: ORKGraphChartView!
    
    let barChartDataSource = BarChartDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        graphView.dataSource = barChartDataSource
        graphView.showsVerticalReferenceLines = true
        graphView.showsHorizontalReferenceLines = true
    }
}

