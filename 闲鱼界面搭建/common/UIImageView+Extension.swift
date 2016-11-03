//
//  UIImageView+Extension.swift
//  swift-test
//
//  Created by tusm on 2016/10/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

import UIKit

extension UIImageView {
    
    
    convenience init(imageName:String){
        self.init()

        self.image = UIImage(named: imageName)
        
        
        sizeToFit()
    }
    
    
    
}
