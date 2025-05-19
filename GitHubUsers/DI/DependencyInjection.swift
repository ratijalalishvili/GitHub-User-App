//
//  DI.swift
//  GitHubUsers
//
//  Created by Rati Jalalishvili on 16.05.25.
//

import Foundation
import Resolver
import NetworkLayer
import UserList
import UserProfile

extension Resolver: ResolverRegistering {
    public static func registerAllServices() {
        registerNetworkLayer()
        registerUserList()
        registerUserProfile()
    }
}
