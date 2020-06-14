//
//  ResultData.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/06/14.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import Foundation

struct ResultData: Decodable {
    let resultsStart: Int
    let resultsReturned: Int
    let resultsAvailable: Int
    let events: [EventData]
    
    enum CodingKeys: String, CodingKey {
        case resultsStart = "results_start"
        case resultsReturned = "results_returned"
        case resultsAvailable = "results_available"
        case events
    }
}
