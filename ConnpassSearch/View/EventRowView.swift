//
//  EventRowView.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/05/31.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import SwiftUI

struct EventRowView: View {
    private let eventName: String
    
    init(eventName: String) {
        self.eventName = eventName
    }
    
    var body: some View {
        HStack {
            Text(eventName)
                .padding()
            Spacer()
        }
    }
}

struct EventRowView_Previews: PreviewProvider {
    static var previews: some View {
        EventRowView(eventName: "iOS勉強会")
            .previewLayout(.fixed(width: 300, height: 60))
    }
}
