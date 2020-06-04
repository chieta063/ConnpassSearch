//
//  Date.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/06/03.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import Foundation

extension Date {
    enum FormatType: String {
        case dateTime = "yyyy/MM/dd hh:mm"
        case date = "yyyy/MM/dd"
        case time = "HH:MM"
    }
    
    func string(type: FormatType = .dateTime) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = type.rawValue
        return formatter.string(from: self)
    }
}
