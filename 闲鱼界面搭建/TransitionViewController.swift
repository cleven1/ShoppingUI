//
//  TransitionViewController.swift
//  闲鱼界面搭建
//
//  Created by tusm on 2017/3/24.
//  Copyright © 2017年 cleven. All rights reserved.
//

import UIKit

class TransitionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blue
        let disBtn = UIButton(frame: CGRect(x: 20, y: 50, width: 100, height: 100))
        self.view.addSubview(disBtn)
        disBtn.backgroundColor = UIColor.red
        disBtn.setTitle("dismiss", for: .normal)
        disBtn.addTarget(self, action: #selector(clickDisBtn), for: .touchUpInside)

    }
    
    @objc fileprivate func clickDisBtn(){
        
       dismiss(animated: true, completion:  nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
