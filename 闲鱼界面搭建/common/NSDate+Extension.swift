//
//  NSDate+Extension.swift
//
//  Created by celven on 16/2/28.
//  Copyright © 2016年 com.apple. All rights reserved.
//

import Foundation

// MARK: - 日期相关常量对象
/// 日期格式化对象
fileprivate let cl_sharedDateFormatter = DateFormatter()
/// 日历对象
fileprivate let cl_sharedCalendar = Calendar.current

extension Date {
    
    
    /// 返回指定时间差值的日期字符串
    ///
    /// - parameter delta: 时间差值
    ///
    /// - returns: 日期字符串
    static func cl_dateStringWithDelta(delta: TimeInterval) -> String {
        
        cl_sharedDateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        cl_sharedDateFormatter.locale = NSLocale(localeIdentifier: "en") as Locale!
        
        let date = NSDate(timeIntervalSinceNow: delta)
        
        return cl_sharedDateFormatter.string(from: date as Date)
    }

    
    
    
    /// 使用新浪格式的字符串创建日期
    ///                        "Fri Oct 21 19:31:02 +0800 2016"
    /// - parameter create_at: EEE MMM dd HH:mm:ss zzz yyyy
    ///
    /// - returns: NSDate
  static func cl_sinaData(_ create_at: String?) -> Date? {
        
        cl_sharedDateFormatter.dateFormat = "EEE MMM dd HH:mm:ss zzz yyyy"
        cl_sharedDateFormatter.locale = Locale(identifier: "en")
        
        return cl_sharedDateFormatter.date(from: create_at ?? "" )
    }
   
    /** 日期描述格式字符串
     
     * 刚刚(一分钟内)
     * X分钟前(一小时内)
     * X小时前(当天)
     * 昨天 HH:mm(昨天)
     * MM-dd HH:mm(一年内)
     * yyyy-MM-dd HH:mm(更早期)
     */
    var cl_dateDescription: String {
        
        // 1. 今天
        if cl_sharedCalendar.isDateInToday(self) {
            let delta = Int(Date().timeIntervalSince(self))
            
            if delta < 60 {
                return "刚刚"
            }
            if delta < 3600 {
                return "\(delta / 60) 分钟前"
            }

            return "\(delta / 3600) 小时前"
        }
        
        // 2. 其他
        var fmt = " HH:mm"
        if cl_sharedCalendar.isDateInYesterday(self) {
            fmt = "昨天" + fmt
        } else {
            fmt = "MM-dd" + fmt
            
            let yearNow = (cl_sharedCalendar as NSCalendar).components(.year, from: Date()).year
            let year = (cl_sharedCalendar as NSCalendar).components(.year, from: self).year
            
            if year != yearNow {
                fmt = "yyyy-" + fmt
            }
        }
        
        cl_sharedDateFormatter.dateFormat = fmt
        cl_sharedDateFormatter.locale = Locale(identifier: "en")
        
        return cl_sharedDateFormatter.string(from: self)
    }
}
