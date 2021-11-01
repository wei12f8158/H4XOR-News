//
//  WebView.swift
//  H4XOR News
//
//  Created by 吳偉平 on 2021/11/1.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable{
    //represent UIKit View
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                //Pass safe url into url
                uiView.load(request)
            }
        }
    }
}

