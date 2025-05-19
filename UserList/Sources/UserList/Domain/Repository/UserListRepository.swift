//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 16.05.25.
//

import Foundation

protocol UserListRepository {
    func getUserList() async throws -> [User]
}
