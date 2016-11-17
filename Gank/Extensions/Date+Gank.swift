//
//  Date+Gank.swift
//  Gank
//
//  Created by 叶帆 on 2016/11/17.
//  Copyright © 2016年 Suzhou Coryphaei Information&Technology Co., Ltd. All rights reserved.
//

import UIKit

extension Date {
    
    /// Initializes Date from string and format
    public init?(fromString string: String, format: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        if let date = formatter.date(from: string) {
            self = date
        } else {
            return nil
        }
    }
    
    /// EZSE: Converts Date to String, with format
    public func toString(format: String = "yyyy-MM-dd") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
    // Check date if it is today
    public var isToday: Bool {
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        return format.string(from: self) == format.string(from: Date())
    }
}
