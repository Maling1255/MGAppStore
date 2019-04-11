//
//  MGTabBarController.swift
//  MGAppStore
//
//  Created by maling on 2019/4/9.
//  Copyright © 2019 maling. All rights reserved.
//

import UIKit

class MGTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addSubviewController()
    }
    
    private func addSubviewController() {
    
        initNavigationController(VC: MGTodayController(), title: "Today", imageName: "today")
        initNavigationController(VC: MGGameController(), title: "Game", imageName: "game")
        initNavigationController(VC: MGAppController(), title: "App", imageName: "apple")
        initNavigationController(VC: MGUpdateController(), title: "Update", imageName: "update")
        initNavigationController(VC: MGSearchController(), title: "Search", imageName: "search")
        
    }
    
    private func initNavigationController(VC: UIViewController, title: String, imageName: String) {
        
        VC.title = title
        VC.tabBarItem.image = UIImage(named: imageName)
        VC.tabBarItem.selectedImage = UIImage(named: imageName + "_select")
        addChild(MGNavigationController(rootViewController:VC))
    }
    
    
    

}
