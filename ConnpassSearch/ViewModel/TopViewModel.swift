//
//  SearchResultViewModel.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/06/01.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import Foundation

class TopViewModel: ObservableObject {
    private let searchModel = SearchModel()
    @Published var searchResult: [EventData] = []
    
    func search(searchWord: String) {
        self.searchModel.search(with: searchWord) { (result) in
            switch result {
            case let .success(events):
                searchResult = events
            case let .failure(error):
                debugPrint(error.localizedDescription)
            }
        }
    }
}
