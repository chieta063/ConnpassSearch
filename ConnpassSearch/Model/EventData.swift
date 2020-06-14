//
//  EventData.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/06/01.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import Foundation
import SwiftUI
import Darwin

struct EventData: Identifiable {
    var id: Int
    let name: String
    let url: URL
    let lat: Double?
    let lon: Double?
    let address: String
    let startDate: Date
    let endDate: Date
    let description: String
    
    enum RootKeys: String, CodingKey {
        case resultsStart = "results_start"
        case resultsReturned = "results_returned"
        case resultsAvailable = "results_available"
        case events
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "event_id"
        case name = "title"
        case url = "event_url"
        case lat
        case lon
        case address
        case startDate = "started_at"
        case endDate = "ended_at"
        case description
    }
}

extension EventData: Decodable {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(Int.self, forKey: .id)
        name = try values.decode(String.self, forKey: .name)
        url = try values.decode(URL.self, forKey: .url)
        let latStr = try values.decode(String?.self, forKey: .lat)
        lat = atof(latStr ?? "")
        let lonStr = try values.decode(String?.self, forKey: .lon)
        lon = atof(lonStr ?? "")
        address = try values.decode(String.self, forKey: .address)
        let formatter = ISO8601DateFormatter()
        let startDateStr = try values.decode(String.self, forKey: .startDate)
        startDate = formatter.date(from: startDateStr)!
        let endDateStr = try values.decode(String.self, forKey: .endDate)
        endDate = formatter.date(from: endDateStr)!
        description = try values.decode(String.self, forKey: .description)
    }
}
