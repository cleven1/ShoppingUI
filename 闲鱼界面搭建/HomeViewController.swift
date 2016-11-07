//
//  HomeViewController.swift
//  闲鱼界面搭建
//
//  Created by cleven on 2016/10/24.
//  Copyright © 2016年 cleven. All rights reserved.
//

import UIKit

let homeIdentifier:String = "homecell"
let scrollIdentifier:String = "scrollcell"
let listIdentifier:String = "listcell"
let defaultIdentifier:String = "defaultcell"
class HomeViewController: RootViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        
        
        tableView?.register(headCell.self, forCellReuseIdentifier: homeIdentifier)
        tableView?.register(scrollCell.self, forCellReuseIdentifier: scrollIdentifier)
        tableView?.register(listCell.self, forCellReuseIdentifier: listIdentifier)
        tableView?.register(defaultCell.self, forCellReuseIdentifier: defaultIdentifier)
        
      
        
    }
    deinit {
        print("销毁")
    }
   
  
}
extension HomeViewController {
    
   override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 4
    
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section < 3 {
            return 1
        }
        
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell?
        switch indexPath.section {
        case 0:
           cell = tableView.dequeueReusableCell(withIdentifier: homeIdentifier, for: indexPath) as! headCell
            break
        case 1:
           cell = tableView.dequeueReusableCell(withIdentifier: scrollIdentifier, for: indexPath) as! scrollCell
            break
        case 2:
           cell = tableView.dequeueReusableCell(withIdentifier: listIdentifier, for: indexPath)
            break
        default:
          
          let cell = tableView.dequeueReusableCell(withIdentifier: defaultIdentifier, for: indexPath) as! defaultCell
            
            cell.indexPath = indexPath
        
            return cell
        }
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(indexPath.row)
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 && indexPath.row == 0 {
            
            return 200
        }
       else if indexPath.section == 1 && indexPath.row == 0 {
            
            return KScreenWidht/2
        }
        return 80
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.0
    }
  
}
