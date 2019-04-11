//
//  MGTodayController.swift
//  MGAppStore
//
//  Created by maling on 2019/4/9.
//  Copyright © 2019 maling. All rights reserved.
//

import UIKit

let kCell_indentifier = "kCell_indentifier"

class MGTodayController: UIViewController {

    lazy var largeTitleView: MGLargeTitleView = {
       
        let largeTitleView = MGLargeTitleView(frame: CGRect(x: 0, y: 0, width: Int(MGScreenWidth), height: MGNAVIGATION_BAR_HEIGHT + 44))
        return largeTitleView
    }()
    
    lazy var displayTableView: UITableView = {
        
       let displayTableView = UITableView(frame: CGRect(x: 0, y: CGFloat(MGSTATUS_BAR_HEIGHT), width: MGScreenWidth, height: MGScreenHeight - CGFloat(MGNAVIGATION_BAR_HEIGHT)), style: .plain)
        displayTableView.delegate = self
        displayTableView.dataSource = self
        displayTableView.separatorStyle = .none
        displayTableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: kCell_indentifier)
        displayTableView.tableFooterView = UIView()
        return displayTableView
    }()
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white;
        setUI()
    }
    
    func setUI(){
        
        showActivityIndicator()
        displayTableView.tableHeaderView = largeTitleView
        
    }
    
    func showActivityIndicator() {
        
        let activity = UIActivityIndicatorView(style: .gray)
        activity.center = view.center;
        view.addSubview(activity)
        activity.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            activity.stopAnimating()
            activity.hidesWhenStopped = true
            self.view.addSubview(self.displayTableView)
        }
        
    }
    
}

extension MGTodayController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 1 {
        
            var cell = tableView.dequeueReusableCell(withIdentifier: "two") as? MGRollCell
            if cell == nil {
                cell = MGRollCell(style: .default, reuseIdentifier: "two")
            }
            
            cell?.backgroundColor = .white
            
            return cell!
            
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: kCell_indentifier)
            let bgView = UIView(frame: CGRect(x: 25, y: 10, width: MGScreenWidth - 25*2, height: 420 - 10*2))
            bgView.backgroundColor = UIColor(red: 243/255.0, green: 243/255.0, blue: 243/255.0, alpha: 1)
//            bgView.backgroundColor = UIColor.randomColor()
            
            bgView.cornerRadius(10)
            cell?.addSubview(bgView)
            cell?.selectionStyle = .none
            return cell!
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 1 {return 500} else {return 420}
        
    }
}
