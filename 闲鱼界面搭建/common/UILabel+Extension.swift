//
//  UILabel+Extension.swift
//  swift-test
//
//  Created by tusm on 2016/10/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

import UIKit


extension UILabel {
    
    convenience init(text:String? = nil,
                     textColor:UIColor = UIColor.darkGray,
                     fontSize:CGFloat,
                     textAlignment:NSTextAlignment = .left,
                     MaxLayoutWidth:CGFloat = UIScreen.main.bounds.width - 40){
        self.init()
        
        self.text = text
        self.preferredMaxLayoutWidth = MaxLayoutWidth
        self.textColor = textColor
        self.textAlignment = textAlignment
        
        self.numberOfLines = 0
        sizeToFit()
        
    }
    
    
    
}
