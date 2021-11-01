//
//  DetailView.swift
//  H4XOR News
//
//  Created by 吳偉平 on 2021/11/1.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    //Because url could be nil
    
    var body: some View {
      WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

