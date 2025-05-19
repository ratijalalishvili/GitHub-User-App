//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 17.05.25.
//

import Foundation

protocol UserProfileUseCase {
    func getUserProfile(for userId: Int) async throws -> UserProfile
}
