//
//  headCell.swift
//  闲鱼界面搭建
//
//  Created by cleven on 2016/10/24.
//  Copyright © 2016年 cleven. All rights reserved.
//

import UIKit
import SnapKit
class headCell: UITableViewCell {

 
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = UIColor.red
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
extension headCell {
    
    fileprivate func setupUI(){
        
        let cycleView = CLCycleScrollView(frame: CGRect(x: 0, y: 0, width: KScreenWidht, height: 200))
        
        contentView.addSubview(cycleView)
        
        
    }
    
}
