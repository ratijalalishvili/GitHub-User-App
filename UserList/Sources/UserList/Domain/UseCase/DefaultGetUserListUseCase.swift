//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 16.05.25.
//

import Foundation
import Resolver

struct DefaultGetUserListUseCase: GetUserListUseCase {
    @Injected private var repository: UserListRepository
    
    func getUserList() async throws -> [User] {
        try await repository.getUserList()
    }
}
