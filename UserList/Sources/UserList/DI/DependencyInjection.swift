//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 16.05.25.
//

import Foundation
import Resolver

public extension Resolver {
    static func registerUserList() {
        register(UserListRepository.self) { DefaultUserListRepository() }
        register(GetUserListUseCase.self) { DefaultGetUserListUseCase() }
    }
}
