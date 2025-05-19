//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 17.05.25.
//

import Foundation
import NetworkLayer
import Resolver

struct GetUserProfileGateway {
    @Injected private var networkClient: NetworkClient
    
    func getUserProfile(for userId: Int) async throws -> UserProfileDTO {
        let endpoint = Endpoint(path: "user/\(userId)")
        return try await networkClient.request(endpoint)
    }
}
