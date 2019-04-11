//
//  MGRollCell.swift
//  MGAppStore
//
//  Created by maling on 2019/4/11.
//  Copyright © 2019 maling. All rights reserved.
//

import UIKit

class MGRollCell: UITableViewCell {
    
    var bgView: UIView!
    var displayCollectionView: UICollectionView!
    var page: Int = 0
    var colorAry: [UIColor] = []
    var collectionAry: [UICollectionView] = []
    var itemClickBlock: (() -> Void)?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUI() {
        
        bgView = UIView(frame: CGRect(x: 20, y: 10, width: MGScreenWidth - 20*2, height: 500 - 20))
        bgView.backgroundColor = UIColor(red: 243/255.0, green: 243/255.0, blue: 243/255.0, alpha: 1)
        bgView.cornerRadius(10)
        contentView.addSubview(bgView)
        
        let lbl1 = UILabel(text: "今日主题", textColor: .gray, font: UIFont.systemFont(ofSize: 16), frame: CGRect(x: 20, y: 20, width: 100, height: 20))
        bgView.addSubview(lbl1)
        
        let lbl2 = UILabel(text: "如果你也需要通勤", textColor: .black, font: UIFont.boldSystemFont(ofSize: 26), frame: CGRect(x: 20, y: lbl1.bottom + 15, width: 300, height: 20))
        bgView.addSubview(lbl2)
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 125, height: 115)
        layout.minimumLineSpacing = 10
        layout.scrollDirection = .horizontal
        
        let itemHeight = 115
        for i in 0 ... 2 {
            
            displayCollectionView = UICollectionView(frame: CGRect(x: 0, y: Int(lbl2.bottom) + 20 + i*(itemHeight + 10), width: Int(bgView.width), height: itemHeight), collectionViewLayout: layout)
            displayCollectionView.dataSource = self
            displayCollectionView.delegate = self
            displayCollectionView.tag = i
            displayCollectionView.backgroundColor = .clear
            displayCollectionView.showsHorizontalScrollIndicator = false
            displayCollectionView.isScrollEnabled = false;
            bgView.addSubview(displayCollectionView)
            
            collectionAry.append(displayCollectionView)
            colorAry.append(MGRandomColor)
            displayCollectionView.register(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: i.description)
        }
        
        let timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(startAutoScroll), userInfo: nil, repeats: true)
        RunLoop.main.add(timer, forMode: .tracking)
        
    }
    
   @objc func startAutoScroll() {
        
        page += 1
        
        for index in 0...2 {
            let collectionView = collectionAry[index]
            collectionView.setContentOffset(CGPoint(x: (10 + index) * page, y: 0), animated: true)
        }
    }
    
}

extension MGRollCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView.tag {
            
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionView.tag.description, for: indexPath)
            cell.backgroundColor = colorAry[collectionView.tag]
            cell.layer.cornerRadius = 10
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionView.tag.description, for: indexPath)
            cell.backgroundColor = colorAry[collectionView.tag]
            cell.layer.cornerRadius = 10
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionView.tag.description, for: indexPath)
            cell.backgroundColor = colorAry[collectionView.tag]
            cell.layer.cornerRadius = 10
            return cell
        default:
            print("")
        }
        
         return UICollectionViewCell()
    }
}
