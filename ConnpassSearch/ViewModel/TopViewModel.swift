//
//  SearchResultViewModel.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/06/01.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import Foundation
import RxSwift

class TopViewModel: ObservableObject {
    private let searchModel = SearchModel()
    @Published var searchResult: [EventData] = []
    
    private let disposeBag = DisposeBag()
    
    func search(searchWord: String) {
        self.searchModel.search(with: searchWord)
            .subscribe(onSuccess: { [weak self] (events) in
                self?.searchResult = events
            }) { (error) in
                debugPrint(error.localizedDescription)
            }
            .disposed(by: disposeBag)
    }
}
