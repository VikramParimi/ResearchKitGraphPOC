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
        ORKValueStack(stackedValues: [4]),
        ORKValueStack(stackedValues: [2]),
        ORKValueStack(stackedValues: [2]),
        ORKValueStack(stackedValues: [3]),
        ORKValueStack(stackedValues: [5]),
        ORKValueStack(stackedValues: [8]),
        ORKValueStack(stackedValues: [14]),
        ORKValueStack(stackedValues: [6]),
        ORKValueStack(stackedValues: [3]),
        ORKValueStack(stackedValues: [5]) ]
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
        return #colorLiteral(red: 0.2941176471, green: 0.4784313725, blue: 0.8862745098, alpha: 1)
    }
}
