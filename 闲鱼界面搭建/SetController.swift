//
//  SetController.swift
//  闲鱼界面搭建
//
//  Created by cleven on 2016/10/24.
//  Copyright © 2016年 cleven. All rights reserved.
//

import UIKit


class SetController: UIViewController {

   
    let tableView = UITableView(frame: .zero, style: .grouped)
    
    override func loadView() {
        view = tableView
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        perpareData()
        
    }
    
    deinit{

        print("销毁了")
    }
    //MARK: 属性
    
    //加载plist
   fileprivate var listData: NSDictionary = {
        
        let path = Bundle.main.path(forResource: "setting.plist", ofType: nil)
        
        var listData:NSDictionary = NSDictionary()
        
        listData = NSDictionary(contentsOfFile: path!)!
        
        return listData
    }()

    fileprivate var groups:[[String:AnyObject]] = [[String:AnyObject]]()
    
}

extension SetController {
    
    fileprivate func perpareData(){
    
        groups = listData.object(forKey: "items") as! [[String:AnyObject]]
    }
    
}

extension SetController:UITableViewDelegate,UITableViewDataSource{
    
     func numberOfSections(in tableView: UITableView) -> Int {
        
        return groups.count
        
    }
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let item = groups[section]
        
        return item.count
        
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let item = groups[indexPath.section]
    
       let cell = settingCell.setCellWithTableView(tableView: tableView, item: item) as! settingCell
        
        cell.item = item
        
        return cell
    }
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
            
            return 44
        }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        
        return listData.object(forKey: "footer") as? String
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return listData.object(forKey: "header") as? String
    }
}
