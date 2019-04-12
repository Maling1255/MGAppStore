//
//  MGBaseController.swift
//  MGAppStore
//
//  Created by maling on 2019/4/11.
//  Copyright © 2019 maling. All rights reserved.
//

import UIKit

class MGBaseController: UIViewController {

    lazy var displayTableView: UITableView = {
        
        let displayTableView = UITableView(frame: CGRect(x: 0, y: 0, width: Int(MGScreenWidth), height:Int(MGScreenHeight)), style: .plain)
        displayTableView.backgroundColor = .white
        displayTableView.tableFooterView = UIView()
        return displayTableView
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
//        view.backgroundColor = .white
    }
    
}
