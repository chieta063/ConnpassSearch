//
//  SearchEventAPI.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/06/05.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import Foundation
import Moya

enum SearchEventAPI {
    case search(keyword: String)
}

extension SearchEventAPI: TargetType {
    var baseURL: URL {
        URL(string: "https://connpass.com/api/v1/")!
    }
    
    var path: String {
        switch self {
        case .search:
            return "event"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .search:
            return .get
        }
    }
    
    var sampleData: Data {
        """
        {
            "id": 1,
            "name": "iOS勉強会1",
            "url": "https://www.google.co.jp",
            "lat": 43.094170,
            "lon": 141.283174,
            "address": "オンライン",
            "start_date": "2020-05-24T13:00:00+09:00",
            "end_date": "2020-05-24T17:00:00+09:00",
            "description": "iOSについて勉強しましょう！\nこれから始めたいという方も歓迎です!"
        }
        """.data(using: .utf8)!
    }
    
    var task: Task {
        switch self {
        case let .search(keyword):
            return .requestParameters(parameters: ["keyword": keyword], encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .search:
            return nil
        }
    }
}
