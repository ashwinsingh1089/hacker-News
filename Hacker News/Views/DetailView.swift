//
//  DetailView.swift
//  Hacker News
//
//  Created by Ashwin Singh on 21/11/20.
//  Copyright © 2020 Zedexinfo. All rights reserved.
//

import SwiftUI
struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}

