//
//  MGAppStoreTool.swift
//  MGAppStore
//
//  Created by maling on 2019/4/11.
//  Copyright © 2019 maling. All rights reserved.
//

import UIKit

struct MGAppStoreTool {
    
    // 单利
    static let sharedTool = MGAppStoreTool()
    
    
    
    func getCurrentDayTime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "M月dd日"
        let dayStr = dateFormatter.string(from: Date())
        
        let calendar: Calendar = Calendar(identifier: .gregorian)
        var comps: DateComponents = DateComponents()
        comps = calendar.dateComponents([.year, .month, .day, .weekday, .hour, .minute, .second], from: Date())
        
        var weekStr = ""
        switch comps.weekday! - 1 {
        case 1:
            weekStr = "星期一"
        case 2:
            weekStr = "星期二"
        case 3:
            weekStr = "星期三"
        case 4:
            weekStr = "星期四"
        case 5:
            weekStr = "星期五"
        case 6:
            weekStr = "星期六"
        case 7:
            weekStr = "星期日"
        default:
            print("")
        }
        
        return dayStr + "   \(weekStr)"
    }
    
    
    
}
