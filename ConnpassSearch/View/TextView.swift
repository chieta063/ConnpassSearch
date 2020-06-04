//
//  TextView.swift
//  ConnpassSearch
//
//  Created by 阿部紘明 on 2020/06/03.
//  Copyright © 2020 阿部紘明. All rights reserved.
//

import SwiftUI
import UIKit

struct TextView: UIViewRepresentable {
    var text: String
    
    func makeUIView(context: Context) -> UITextView {
        .init(frame: .zero)
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.layer.cornerRadius = 8.0
        uiView.layer.borderColor = UIColor.lightGray.cgColor
        uiView.layer.borderWidth = 1
        uiView.isEditable = false
        uiView.text = self.text
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "アイウエオ")
    }
}
