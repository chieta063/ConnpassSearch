//
//  EventData.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/06/01.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import Foundation
import SwiftUI

struct EventData: Decodable, Identifiable {
    var id: Int
    let name: String
    let url: URL
    let lat: Double
    let lon: Double
    let address: String
    let startDate: Date
    let endDate: Date
    let description: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case url
        case lat
        case lon
        case address
        case startDate = "start_date"
        case endDate = "end_date"
        case description
    }
}
