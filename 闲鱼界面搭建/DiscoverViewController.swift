//
//  DiscoverViewController.swift
//  闲鱼界面搭建
//
//  Created by cleven on 2016/10/24.
//  Copyright © 2016年 cleven. All rights reserved.
//

import UIKit

let itemCell = "itemCell"
class DiscoverViewController: RootViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        perpareData()
        
        tableView?.register(UITableViewCell.self ,forCellReuseIdentifier: itemCell)
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

extension DiscoverViewController {
    
    fileprivate func perpareData(){
    
        groups = listData.object(forKey: "items") as! [[String:AnyObject]]
    }
    
}

extension DiscoverViewController{
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return groups.count
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let item = groups[section]
        
        return item.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: itemCell, for: indexPath)
        
        cell.backgroundColor = UIColor.cl_randomColor()
        
        let item = groups[indexPath.section]
       
        cell.detailTextLabel?.text = item["details"] as? String
        cell.textLabel?.text = item["title"] as? String
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
            
            return 44
        }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        
        return listData.object(forKey: "footer") as? String
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return listData.object(forKey: "header") as? String
    }
}
