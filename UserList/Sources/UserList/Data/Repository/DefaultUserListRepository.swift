//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 16.05.25.
//

import Foundation

struct DefaultUserListRepository: UserListRepository {
    private let gateway = GetUserListGateway()
    
    func getUserList() async throws -> [User] {
        try await gateway.getUserList().map { $0.toDomain }
    }
}
