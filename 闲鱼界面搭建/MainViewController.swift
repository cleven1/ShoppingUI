//
//  MainViewController.swift
//  闲鱼界面搭建
//
//  Created by cleven on 2016/10/24.
//  Copyright © 2016年 cleven. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setUpUI()
        
    }
    
    
    
}
extension MainViewController {
    
    fileprivate func setUpUI(){
        
        
        addChildViewController(title: "首页", vc: HomeViewController(), imageName: "tabbar_home")
        
        addChildViewController(title:"发现", vc: DiscoverViewController(), imageName: "tabbar_discover")
        
        
    }
    
    fileprivate func addChildViewController(title:String,vc:UIViewController,imageName:String){
        
        vc.title = title
        //设置默认图片
        vc.tabBarItem.image = UIImage(named:imageName)
        //设置高亮图片
        vc.tabBarItem.selectedImage = UIImage(named: imageName +  "_selected")?.withRenderingMode(.alwaysOriginal)
        
        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.orange], for: .selected)
        
        let nav = UINavigationController(rootViewController: vc)
        //添加子控制器
        addChildViewController(nav)
        
    }
    
}

