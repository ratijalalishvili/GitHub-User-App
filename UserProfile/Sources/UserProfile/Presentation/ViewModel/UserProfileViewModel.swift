//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 17.05.25.
//

import Foundation
import Resolver

public final class UserProfileViewModel: ObservableObject {
    @Injected private var userProfileUseCase: UserProfileUseCase
    
    @Published var userProfile: UserProfile?
    @Published var error: String?
    
    private let userId: Int
    
    public init(userId: Int) {
        self.userId = userId
    }
    
    
    @MainActor
    func getUserProfile() async {
        do {
            userProfile = try await userProfileUseCase.getUserProfile(for: userId)
        } catch {
            self.error = error.localizedDescription
        }
    }
}


