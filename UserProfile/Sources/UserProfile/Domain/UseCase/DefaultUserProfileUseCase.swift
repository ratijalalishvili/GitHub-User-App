//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 17.05.25.
//

import Foundation
import Resolver

struct DefaultUserProfileUseCase: UserProfileUseCase {
    @Injected private var repository: UserProfileRepository
    
    func getUserProfile(for userId: Int) async throws -> UserProfile {
        try await repository.getUserProfile(with: userId)
    }
}
