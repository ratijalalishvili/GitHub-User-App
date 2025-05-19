//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 16.05.25.
//

import Foundation
import Resolver
import NetworkLayer

struct GetUserListGateway {
    @Injected private var networkClient: NetworkClient
    
    func getUserList() async throws -> [UserDTO] {
        let endpoint = Endpoint(path: "users")
        return try await networkClient.request(endpoint)
    }
}
