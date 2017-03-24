//
//  DisCoverController.swift
//  闲鱼界面搭建
//
//  Created by tusm on 2016/11/9.
//  Copyright © 2016年 cleven. All rights reserved.
//

import UIKit
import SwiftyMarkdown
import Lottie
class DisCoverController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
      
        setUpUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @objc fileprivate func clickStartBtn(){
        
        let anim = LOTAnimationView(name: "vcTransition1")
        
        self.view.addSubview(anim!)
        
//        anim?.play()
        anim?.play(completion: { (isPlay) in 
            
            anim?.removeFromSuperview()
        })
    }
    
    
    fileprivate let clLottie = CLLottieAnimation(JsonName: "vcTransition1")
    @objc fileprivate func clickTransitionBtn(){
        
        let vc = TransitionViewController()
        
        vc.transitioningDelegate = clLottie
        
        present(vc, animated: true, completion: nil)
        
    }
    
    
}

extension DisCoverController{
    
    func setUpUI(){
        
        let startBtn = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 80))
        startBtn.setTitle("开始动画", for: .normal)
        startBtn.backgroundColor = UIColor.purple
        self.view.addSubview(startBtn)
        startBtn.addTarget(self, action: #selector(clickStartBtn), for: .touchUpInside)
        
        
        let transition = UIButton(title: "转场测试", titleColor: UIColor.red)
        transition.backgroundColor = UIColor.purple
        transition.frame = CGRect(x: 100, y: 300, width: 100, height: 80)
        self.view.addSubview(transition)
        transition.addTarget(self, action: #selector(clickTransitionBtn), for: .touchUpInside)
    }
    
    



    
    
}
