//
//  MGGameController.swift
//  MGAppStore
//
//  Created by maling on 2019/4/9.
//  Copyright © 2019 maling. All rights reserved.
//

import UIKit

class MGGameController: MGBaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        setUI()
    }

    func setUI(){
        
        self.displayTableView.delegate = self
        self.displayTableView.dataSource = self
        view.addSubview(self.displayTableView);
        
        self.displayTableView.register(MGGameOneCell.classForCoder(), forCellReuseIdentifier: "MGGameOneCell")
//        self.displayTableView.register(MGGameTwoCell.self, forCellReuseIdentifier: "MGGameTwoCell")
        
        
    }
}

extension MGGameController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = MGGameOneCell(style: .default, reuseIdentifier: "MGGameOneCell")
            return cell
        } else if indexPath.row == 1 {
            var cell = tableView.dequeueReusableCell(withIdentifier: indexPath.row.description)
            if cell == nil {
                cell = MGGameTwoCell(style: .default, reuseIdentifier: indexPath.row.description)
            }
            
            return cell!
        }
        
        
        
        
        
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0 {
            
            return 290
        }
        return 400
    }
    
    
    
}

