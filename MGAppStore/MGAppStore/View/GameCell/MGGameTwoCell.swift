//
//  MGGameTwoCell.swift
//  MGAppStore
//
//  Created by maling on 2019/4/12.
//  Copyright © 2019 maling. All rights reserved.
//

import UIKit

class MGGameTwoCell: UITableViewCell {

    var collectionV: UICollectionView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: MGScreenWidth - 60, height: 400)
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
        layout.scrollDirection = .horizontal
        
        collectionV = UICollectionView(frame: CGRect(x: 0, y: 0, width: MGScreenWidth, height: 400), collectionViewLayout: layout)
        collectionV.backgroundColor = .white
        collectionV.showsHorizontalScrollIndicator = false
        //        collectionV.isPagingEnabled = true
        collectionV.dataSource = self
        collectionV.delegate = self
        collectionV.register(UINib(nibName: "MGGameTwoCollectionCell", bundle: nil), forCellWithReuseIdentifier: "MGGameTwoCollectionCell")
        addSubview(collectionV)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MGGameTwoCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MGGameTwoCollectionCell", for: indexPath)
        
        return cell
    }
    
}
