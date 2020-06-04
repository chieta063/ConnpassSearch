//
//  SearchModel.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/06/01.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import Foundation

class SearchModel {
    func search(with keyword: String, completion: (Result<[EventData], Error>) -> Void) {
        guard let json = Bundle.main.url(forResource: "searchresult.json", withExtension: nil) else {
            return
        }
        do {
            let data = try Data(contentsOf: json)
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            let events = try decoder.decode([EventData].self, from: data)
            completion(.success(events))
        } catch (let error) {
            completion(.failure(error))
        }
    }
}
