//
//  EventDetailView.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/06/03.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import SwiftUI

struct EventDetailView: View {
    var event: EventData
    var eventDateString: String {
        let date = event.startDate.string(type: .date)
        let startTime = event.startDate.string(type: .time)
        let endTime = event.endDate.string(type: .time)
        return "\(date) \(startTime)〜\(endTime)"
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: .init(latitude: event.lat, longitude: event.lon))
                .frame(height: 200)
            EventInfoView(titleType: .dateTime, info: eventDateString)
            EventInfoView(titleType: .place, info: event.address)
            URLView(url: event.url)
            EventDescriptionView(description: event.description)
            Spacer()
        }
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailView(event: EventData(
            id: 0,
            name: "iOS勉強会",
            url: URL(string: "https://www.google.co.jp")!,
            lat: 43.094170,
            lon: 141.283174,
            address: "オンライン",
            startDate: Date(),
            endDate: Date(),
            description: "iOSについて勉強しましょう！\nこれから始めたいという方も歓迎です!")
        )
    }
}
