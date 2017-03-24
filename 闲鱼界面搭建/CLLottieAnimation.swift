//
//  CLLottieAnimation.swift
//  闲鱼界面搭建
//
//  Created by tusm on 2017/3/24.
//  Copyright © 2017年 cleven. All rights reserved.
//

import UIKit
import Lottie
class CLLottieAnimation: NSObject {
    fileprivate var jsonName:String
    fileprivate var fLayerName:String = "outLayer"
    fileprivate var tLayerName:String = "inLayer"
    init(JsonName:String) {
        jsonName = JsonName
        
        super.init()
    
    }
    
    
}
extension CLLottieAnimation:UIViewControllerTransitioningDelegate{
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        let animationController = LOTAnimationTransitionController(animationNamed: jsonName, fromLayerNamed: fLayerName, toLayerNamed: tLayerName)
        
        return animationController
    }
    
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        let animationController = LOTAnimationTransitionController(animationNamed: "vcTransition2", fromLayerNamed: fLayerName, toLayerNamed: tLayerName)
        
        return animationController
    }
    
}
