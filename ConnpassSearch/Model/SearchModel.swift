//
//  SearchModel.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/06/01.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import Foundation
import Moya
import RxMoya
import RxSwift

class SearchModel {
    let provider = MoyaProvider<SearchEventAPI>()
    
    func search(with keyword: String) -> Single<[EventData]> {
        provider.rx.request(.search(keyword: keyword))
            .flatMap { response -> Single<[EventData]> in
                let result = try JSONDecoder().decode(ResultData.self, from: response.data)
                return .just(result.events)
            }
    }
    
    func getStub() -> Single<[EventData]> {
        guard let json = Bundle.main.url(forResource: "searchresult.json", withExtension: nil) else {
            return .never()
        }
        do {
            let data = try Data(contentsOf: json)
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            return .just(try decoder.decode([EventData].self, from: data))
        } catch (let error) {
            return .error(error)
        }
    }
}
