//
//  EventDescriptionView.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/06/03.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import SwiftUI

struct EventDescriptionView: View {
    var description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("イベント概要")
                .font(.subheadline)
            TextView(text: description)
        }
        .frame(height: 180)
        .padding()
    }
}

struct EventDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        EventDescriptionView(description: "説明")
    }
}
