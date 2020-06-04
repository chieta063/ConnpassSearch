//
//  ContentView.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/05/31.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import SwiftUI

struct TopView: View {
    @State var keyword: String = ""
    @ObservedObject var viewModel = TopViewModel()
    
    init() {
        UITableView.appearance().tableFooterView = UIView()
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .center, spacing: 8) {
                    TextField("キーワードを入力", text: $keyword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .navigationBarTitle(
                        Text("Connpassのイベント検索"),
                        displayMode: .inline
                    )
                    Button(action: {
                        self.viewModel.search(searchWord: self.keyword)
                    }) { () in
                        Text("検索")
                    }
                }
                .padding()
                
                List(viewModel.searchResult) { event in
                    NavigationLink(destination: EventDetailView(event: event)) {
                        EventRowView(eventName: event.name)
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
