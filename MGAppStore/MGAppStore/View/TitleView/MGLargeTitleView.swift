//
//  MGLargeTitleView.swift
//  MGAppStore
//
//  Created by maling on 2019/4/9.
//  Copyright © 2019 maling. All rights reserved.
//

import UIKit

class MGLargeTitleView: UIView {

    var timeLbl: UILabel!
    var titleLbl: UILabel!
    var headImageView: UIImageView!
    var bottomLine: UIView!
    var isHideImage: Bool = false
    
    var isShowTime: Bool = false {
        
        didSet {
            
        }
    }
    
    var isShowBottomLine: Bool = false {
        
        didSet {
            
        }
    }
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        timeLbl = UILabel(text: MGAppStoreTool.sharedTool.getCurrentDayTime(),
                          textColor: .lightGray,
                          font: UIFont.systemFont(ofSize: 12),
                          frame: CGRect(x: 30, y: MGSTATUS_BAR_HEIGHT, width: 100, height: 15))
        addSubview(timeLbl)
        
        titleLbl = UILabel(text: "Today", textColor: nil, font: UIFont.boldSystemFont(ofSize: 30), frame: CGRect(x: 30, y: timeLbl.bottom + 16, width: 100, height: 30))
        addSubview(titleLbl)
        
        headImageView = UIImageView(frame: CGRect(x: Int(MGScreenWidth - 50 - 20), y: MGSTATUS_BAR_HEIGHT, width: 50, height: 50))
        headImageView.backgroundColor = MGCommonColor
        headImageView.cornerRadius(25.0)
        addSubview(headImageView)
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
