//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 16.05.25.
//

import Foundation
import Resolver

public extension Resolver {
    static func registerNetworkLayer() {
        register(NetworkClient.self) { DefaultNetworkClient() }
    }
}
