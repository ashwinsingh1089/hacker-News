//
//  WebView.swift
//  Hacker News
//
//  Created by Ashwin Singh on 21/11/20.
//  Copyright © 2020 Zedexinfo. All rights reserved.
//

import SwiftUI
import WebKit
//used to integrate UIKit in SwiftUI
struct WebView: UIViewRepresentable{
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
