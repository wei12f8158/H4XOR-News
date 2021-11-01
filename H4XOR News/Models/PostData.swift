//
//  PostData.swift
//  H4XOR News
//
//  Created by 吳偉平 on 2021/10/30.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
