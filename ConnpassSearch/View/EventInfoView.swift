//
//  EventInfoView.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/06/03.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import SwiftUI

struct EventInfoView: View {
    enum TitleType: String {
        case dateTime = "開催日時"
        case place = "開催場所"
    }
    
    var titleType: TitleType
    var info: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(titleType.rawValue)
                    .font(.subheadline)
                Spacer()
                Text(info)
                    .font(.headline)
            }
            Spacer()
        }
        .padding()
        .frame(height: 60)
    }
}

struct EventInfoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EventInfoView(titleType: .dateTime, info: "2020/06/04 18:00~21:00")
                .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 60))
            EventInfoView(titleType: .place, info: "札幌市西区発寒9条10丁目2-20-302")
                .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 60))
        }
    }
}
