//
//  MGGameOneCell.swift
//  MGAppStore
//
//  Created by maling on 2019/4/11.
//  Copyright © 2019 maling. All rights reserved.
//

import UIKit

class MGGameOneCell: UITableViewCell {
    
    var collectionV: UICollectionView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: MGScreenWidth - 60, height: 290)
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
        layout.scrollDirection = .horizontal
        
        collectionV = UICollectionView(frame: CGRect(x: 0, y: 0, width: MGScreenWidth, height: 290), collectionViewLayout: layout)
        collectionV.backgroundColor = .white
        collectionV.showsHorizontalScrollIndicator = false
//        collectionV.isPagingEnabled = true
        collectionV.dataSource = self
        collectionV.delegate = self
        collectionV.register(UINib(nibName: "MGGameOneCollectionCell", bundle: nil), forCellWithReuseIdentifier: "MGGameOneCollectionCell")
        addSubview(collectionV)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MGGameOneCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MGGameOneCollectionCell", for: indexPath)
        
        return cell
    }
    
}

extension MGGameOneCell: UIScrollViewDelegate {
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        // 分页间距
//        let pageSpace = calculateStepSpace()
        
        let pageWidth: CGFloat = calculateStepSpace()
        
        print(">> \(targetContentOffset.pointee.x) 。。。。 \(pageWidth)")
    
//        targetContentOffset.pointee.x = pageWidth
////
//        scrollView.setContentOffset(CGPoint(x: pageWidth, y: 0), animated: true)
        
    }

    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
//        print(".....> \(scrollView.contentOffset.x)")
    }
    
    func calculateStepSpace() -> CGFloat {
        
        let itemSize: CGFloat = MGScreenWidth - 60;
        return itemSize + 10
    }
    
}


