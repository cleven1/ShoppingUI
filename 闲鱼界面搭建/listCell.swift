//
//  listCell.swift
//  闲鱼界面搭建
//
//  Created by cleven on 2016/10/24.
//  Copyright © 2016年 cleven. All rights reserved.
//

import UIKit

class listCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = UIColor.yellow
        
        let TextView = TextScrollView(frame: CGRect(x: 0, y: 0, width: KScreenWidht, height: 80))
        
        contentView.addSubview(TextView)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
