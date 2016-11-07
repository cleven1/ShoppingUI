//
//  settingCell.swift
//  闲鱼界面搭建
//
//  Created by tusm on 2016/11/7.
//  Copyright © 2016年 cleven. All rights reserved.
//

import UIKit

class settingCell: UITableViewCell {

    
    public var item:[String:AnyObject]?{
        didSet{
            guard let item = item else {
                return
            }
            
            self.textLabel?.text = item["title"] as? String
            self.textLabel?.textColor = UIColor.blue
            if ((item["icon"]) != nil) {
                
                self.imageView?.image = UIImage(named: item["icon"] as! String)
                
            }
            if ((item["details"]) != nil) {
                
                self.detailTextLabel?.text = item["details"] as? String
                self.detailTextLabel?.textColor = UIColor.red
            }
            
            //判断这个类是不是UIimageView
            if (item["accessory"] as! String == "UIImageView") {
            
                let imageView = UIImageView.init()

                imageView.image = UIImage(named: item["accessory_img"] as! String)
            
                imageView.sizeToFit()
                
                accessoryView = imageView
                
            }else if (item["accessory"] as! String == "UISwitch"){
                
                let swc = UISwitch.init()
                
                swc.addTarget(self, action: #selector(clickSwitch(swc:)), for: .valueChanged)
                
                accessoryView = swc
            }
        }
        
    }
    
    @objc private func clickSwitch(swc:UISwitch){
        
        print(swc.isOn)
    }
}
extension settingCell {
    
    
    //MARK: 创建cell的方法
   public class func setCellWithTableView(tableView:UITableView,item:[String:AnyObject])->UITableViewCell{
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "set_cell")
        
        if cell == nil {
            
            cell = settingCell.init(style: cellStyleWithText(cellStyle: item["cell_style"] as! String), reuseIdentifier: "set_cell")
        }
        
        if ((item["is_highlighted"]) != nil) {
            
            cell?.detailTextLabel?.textColor = UIColor.red
        }

        return cell!
    }
    //MARK: 按照plist加载cell样式
    fileprivate class func cellStyleWithText(cellStyle:String)->UITableViewCellStyle{
        
        if cellStyle == "UITableViewCellStyleDefault"{
            
            return .default
        }else if cellStyle == "UITableViewCellStyleValue1"{
            
            return .value1
        }else if cellStyle == "UITableViewCellStyleValue2"{
            
            return .value2
        }else{
            
            return .subtitle
        }
    }
}
