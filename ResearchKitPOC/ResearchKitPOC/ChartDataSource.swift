//
//  ChartDataSource.swift
//  ResearchKitPOC
//
//  Created by Pairmi, Vikram (US - Bengaluru) on 11/22/18.
//  Copyright © 2018 vikram. All rights reserved.
//

import ResearchKit

class BarChartDataSource: NSObject, ORKValueStackGraphChartViewDataSource {
    
    var plotPoints = [
        [
        ORKValueStack(stackedValues: [4, 6]),
        ORKValueStack(stackedValues: [2, 4, 4]),
        ORKValueStack(stackedValues: [2, 6, 3, 6]),
        ORKValueStack(stackedValues: [3, 8, 10, 12]),
        ORKValueStack(stackedValues: [5, 10, 12, 8]),
        ORKValueStack(stackedValues: [8, 13, 18]),
        ORKValueStack(stackedValues: [14]),
        ORKValueStack(stackedValues: [6, 6]),
        ORKValueStack(stackedValues: [3, 10, 12]),
        ORKValueStack(stackedValues: [5, 11, 14]) ]
    ]
    
    func graphChartView(_ graphChartView: ORKGraphChartView, dataPointForPointIndex pointIndex: Int, plotIndex: Int) -> ORKValueStack {
       return plotPoints[plotIndex][pointIndex]
    }
    
    func graphChartView(_ graphChartView: ORKGraphChartView, numberOfDataPointsForPlotIndex plotIndex: Int) -> Int {
        return plotPoints[plotIndex].count
    }
    
    func numberOfPlots(in graphChartView: ORKGraphChartView) -> Int {
         return plotPoints.count
    }
    
    func graphChartView(_ graphChartView: ORKGraphChartView, titleForXAxisAtPointIndex pointIndex: Int) -> String? {
        return "\(pointIndex + 1)"
    }
    
    func graphChartView(_ graphChartView: ORKGraphChartView, colorForPlotIndex plotIndex: Int) -> UIColor {
        print(plotIndex)
        return UIColor.darkGray
    }
}
