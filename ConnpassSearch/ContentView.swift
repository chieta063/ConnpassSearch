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
    @State var executeSearch: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("キーワードを入力", text: $keyword) {
                    
                }
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .navigationBarTitle(
                    Text("Connpassのイベント検索"),
                    displayMode: .inline
                )
                
                Button(action: {
                    self.executeSearch.toggle()
                }) { () in
                    Text("検索")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
