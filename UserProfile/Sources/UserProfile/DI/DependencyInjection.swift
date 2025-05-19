//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 17.05.25.
//

import Foundation
import Resolver

public extension Resolver {
    static func registerUserProfile() {
        register(UserProfileRepository.self) { DefaultUserProfileRepository() }
        register(UserProfileUseCase.self) { DefaultUserProfileUseCase() }
    }
}
