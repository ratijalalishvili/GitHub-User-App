//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 17.05.25.
//

import Foundation

struct DefaultUserProfileRepository: UserProfileRepository {
    private var gateway = GetUserProfileGateway()
    
    func getUserProfile(with userId: Int) async throws -> UserProfile {
        return try await gateway.getUserProfile(for: userId).toDomain
    }
}
