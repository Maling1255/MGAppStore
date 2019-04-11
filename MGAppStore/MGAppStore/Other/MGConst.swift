//
//  MGConst.swift
//  MGAppStore
//
//  Created by maling on 2019/4/9.
//  Copyright © 2019 maling. All rights reserved.
//

import UIKit

let MGScreenWidth = UIScreen.main.bounds.width
let MGScreenHeight = UIScreen.main.bounds.height

/// color
let MGCommonColor = UIColor(red: 242.0 / 255.0, green: 242.0 / 255.0, blue: 242.0 / 255.0, alpha: 1)
let MGlineColor = UIColor(red: 218.0 / 255.0, green: 218.0 / 255.0, blue: 218.0  / 255.0, alpha: 1)
let MGblueColor = UIColor(red: 3.0 / 255.0, green: 115.0 / 255.0, blue: 255.0 / 255.0, alpha: 1)


// 适配iPhoneX XR XS XSMax
let is_iPhone = (UI_USER_INTERFACE_IDIOM() == .phone)
let is_iPhoneXSeries = (is_iPhone && MGScreenHeight >= 812)
/// 状态栏高度
let MGSTATUS_BAR_HEIGHT = is_iPhoneXSeries ? 44 : 20
/// 导航栏高度
let MGNAVIGATION_BAR_HEIGHT = is_iPhoneXSeries ? 88 : 64
/// tabBar高度
let MGTAB_BAR_HEIGHT = is_iPhoneXSeries ? 83 : 49

/// 随机色
let MGRandomColor = UIColor(red: CGFloat(arc4random()%256)/255.0, green: CGFloat(arc4random()%256)/255.0, blue: CGFloat(arc4random()%256)/255.0, alpha: 1.0)






//UIColor andomColor() {
//
//    let r = CGFloat(arc4random_uniform(256))
//    let g = CGFloat(arc4random_uniform(256))
//    let b = CGFloat(arc4random_uniform(256))
//    let color = UIColor(red: r, green: g, blue: b, alpha: 1)
//
//    return color
//}
