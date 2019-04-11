//
//  AppDelegate.swift
//  MGAppStore
//
//  Created by maling on 2019/4/9.
//  Copyright © 2019 maling. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window?.rootViewController = MGTabBarController()
        
        return true
    }


}

