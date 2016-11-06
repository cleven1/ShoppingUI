//
//  RootViewController.swift
//  闲鱼界面搭建
//
//  Created by cleven on 2016/10/24.
//  Copyright © 2016年 cleven. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    
    var finished:((_ str:String)->())?
    
    override func loadView() {
        
        setUpUI()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str:String = "asdadads"
        
        print(str.characters.count)
        print(str.lengthOfBytes(using: .utf8))
        
    }
    
    //MARK: 公共属性
    var tableView:UITableView?
    
    deinit {
        print("销毁")
    }
    
}
extension RootViewController {
    
    fileprivate func setUpUI(){
        
        //实例化tableView
        tableView = UITableView(frame: .zero, style: .grouped)
        view = tableView
        
        tableView?.backgroundColor = UIColor.white
        tableView?.delegate = self
        tableView?.dataSource = self
        
    }
    
    
}

extension RootViewController:UITableViewDelegate,UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 0
    }
    
}
