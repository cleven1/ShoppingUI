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
        textLabel?.text = "listcell"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
