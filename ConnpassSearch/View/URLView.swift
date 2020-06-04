//
//  EventURLView.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/06/03.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import SwiftUI

struct URLView: View {
    var url: URL
    @State private var openUrl: Bool = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("URL")
                    .font(.subheadline)
                Button(action: {
                    self.openUrl.toggle()
                }) {
                    Text(url.absoluteString)
                        .foregroundColor(.blue)
                        .underline()
                }
            }
            Spacer()
        }
        .padding()
        .frame(height: 60)
    }
}

struct EventURLView_Previews: PreviewProvider {
    static var previews: some View {
        URLView(url: URL(string: "https://www.google.com/")!)
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 60))
    }
}
