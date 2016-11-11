//
//  TextScrollCell.swift
//  闲鱼界面搭建
//
//  Created by tusm on 2016/11/11.
//  Copyright © 2016年 cleven. All rights reserved.
//

import UIKit
import SnapKit
class TextScrollCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: 控件
    fileprivate var textLabel:UILabel?
    //MARK: 公共属性
    public var textArray:[String]?
    public var indexPath:IndexPath? {
        didSet{
            
                    
            textLabel?.text = textArray?[(indexPath?.item)!]
            
        }
        
    }
    

}
extension TextScrollCell {
    
    fileprivate func setupUI(){

        
        textLabel = UILabel(frame: bounds)
        textLabel?.layer.masksToBounds = true
        textLabel?.backgroundColor = UIColor.yellow
        contentView.addSubview(textLabel!)
        
        textLabel?.snp.makeConstraints({ (make) in
            
            make.center.equalTo(self)
        })
    }
    
}
