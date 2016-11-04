//
//  HeadCollectionViewCell.swift
//  闲鱼界面搭建
//
//  Created by cleven on 2016/11/1.
//  Copyright © 2016年 cleven. All rights reserved.
//

import UIKit
import SnapKit
class HeadCollectionViewCell: UICollectionViewCell {
    
    //MARK: 公共属性
    var indexPath:IndexPath?{
        didSet{
            
            imageView.image?.rightSizeImage(image: imageArr[Int(arc4random() % UInt32(6.0))], Size: imageView.bounds.size, completion: { (image) in
                
                self.imageView.image = image
            })
            titleLabel.text = "商品展示\(indexPath!.row)"
            indexPath?.row += 1
        }
        
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        prepareData()
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: 属性
    fileprivate let  imageView = UIImageView(imageName: "1")
    fileprivate let  titleLabel = UILabel(text: "商品展示", textColor: UIColor.red, fontSize: 17, textAlignment: .center, MaxLayoutWidth: 0)
    
    
    fileprivate var imageArr:[UIImage] = []
    
}
extension HeadCollectionViewCell {
    
    fileprivate func setupUI(){
        contentView.backgroundColor = UIColor.white
        addSubview(imageView)
        addSubview(titleLabel)
        
        titleLabel.layer.masksToBounds = true
        titleLabel.backgroundColor = UIColor.white
        
        imageView.snp.makeConstraints { (make) in
            
            make.centerX.equalTo(self)
            make.top.equalTo(self).offset(5)
        }
        
        titleLabel.snp.makeConstraints { (make) in
            
            make.centerX.equalTo(imageView)
            make.top.equalTo(imageView.snp.bottom)
        }
        
    }
    
    fileprivate func prepareData(){
        
        for i in 0..<6{
            
            imageArr.append(UIImage(named: "\(i + 1)")!)
        }
        
    }
    
}
