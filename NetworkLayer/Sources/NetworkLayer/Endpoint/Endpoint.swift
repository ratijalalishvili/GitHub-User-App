//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 16.05.25.
//

import Foundation

public struct Endpoint {
    let path: String
    let queryItems: [URLQueryItem]?
    let body: Data?

    public init(path: String,
         queryItems: [URLQueryItem]? = nil,
         body: Data? = nil) {
        self.path = path
        self.queryItems = queryItems
        self.body = body
    }
}
