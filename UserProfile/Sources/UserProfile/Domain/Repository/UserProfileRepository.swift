//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 17.05.25.
//

import Foundation

protocol UserProfileRepository {
    func getUserProfile(with userId: Int) async throws -> UserProfile
}
