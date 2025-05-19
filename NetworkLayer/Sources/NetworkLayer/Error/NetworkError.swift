//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 16.05.25.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case decodingFailed(Error)
    case unknown(Error)
    case unathorized
}
