//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 16.05.25.
//

import Foundation

public protocol NetworkClient {
    func request<T: Decodable>(_ endpoint: Endpoint) async throws -> T
}
